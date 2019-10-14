.class public Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
.super Ljava/lang/Object;
.source "SystemUIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;,
        Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;
    }
.end annotation


# static fields
.field private static final KEY_STATUSBAR_EXPANSION:Ljava/lang/String; = "knoxmdm_key_statusbar_disable_expansion"

.field public static final SYSTEM_UI_PACAKGAE:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "SystemUIAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# instance fields
.field private adapterUserId:I

.field private isCallbackDied:Z

.field private isFistcalled:Z

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;",
            ">;"
        }
    .end annotation
.end field

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistedCount:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    iput-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    iput v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBar:Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBar:Landroid/app/StatusBarManager;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registerKnoxModeChangeObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->unregistPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registPersonaObserver(I)V

    return-void
.end method

.method private getCurrentUserId()I
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    move v0, v3

    iget v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    if-eq v0, v3, :cond_18

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_17
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    goto :goto_18

    :catchall_12
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_17
    move-exception v3

    :cond_18
    :goto_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    if-nez v1, :cond_12

    if-eqz p0, :cond_12

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    :cond_12
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;
    .registers 2

    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_11

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private isCalledFromSystem()Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_27

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCalledFromSystem() : no permission because non-system : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private isCalledFromSystemUI()Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_21

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    move-object v0, v3

    :cond_21
    goto :goto_2c

    :catch_22
    move-exception v2

    const-string v3, "SystemUIAdapter"

    const-string/jumbo v4, "isCalledFromSystemUI() : fail to get caller name. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_2c
    if-eqz v0, :cond_39

    const-string v2, "android.uid.systemui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_39

    :cond_37
    const/4 v1, 0x1

    return v1

    :cond_39
    :goto_39
    const-string v2, "SystemUIAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCalledFromSystemUI() : no permission because not systemui : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isComContainerExistOnDevice()Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_5
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerExistOnDevice()Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_16
    .catchall {:try_start_5 .. :try_end_f} :catchall_14

    move v0, v3

    :goto_10
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    :catchall_14
    move-exception v3

    goto :goto_21

    :catch_16
    move-exception v3

    :try_start_17
    const-string v4, "SystemUIAdapter"

    const-string/jumbo v5, "isComContainerExistOnDevice() failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_14

    goto :goto_10

    :goto_20
    return v0

    :goto_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private onKeyguardLaunched()V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/knox/ISecurityPolicy;->onKeyguardLaunched()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1e
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    :cond_18
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_1c
    move-exception v2

    goto :goto_29

    :catch_1e
    move-exception v2

    :try_start_1f
    const-string v3, "SystemUIAdapter"

    const-string/jumbo v4, "onKeyguardLaunched() has failed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1c

    goto :goto_18

    :goto_28
    return-void

    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private registPersonaObserver(I)V
    .registers 9

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registPersonaObserver() - try to regist persona observer - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_21
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5b

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    new-instance v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;

    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, p1, v5}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Landroid/content/Context;II)V

    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registPersonaObserver() - persona observer has registed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5b} :catch_61
    .catchall {:try_start_21 .. :try_end_5b} :catchall_5f

    :cond_5b
    :goto_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6b

    :catchall_5f
    move-exception v3

    goto :goto_6c

    :catch_61
    move-exception v3

    :try_start_62
    const-string v4, "SystemUIAdapter"

    const-string/jumbo v5, "registPersonaObserver() error occurs."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_5f

    goto :goto_5b

    :goto_6b
    return-void

    :goto_6c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private registerKnoxModeChangeObserver()V
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_22

    :try_start_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_22

    :catch_19
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "registerKnoxModeChangeObserver() error occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method private unregistPersonaObserver(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->unregisterPersonaObserverReceiver()V

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method


# virtual methods
.method public clearAllNotificationsAsUser(I)Z
    .registers 8

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllNotificationsAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    return v0

    :cond_1e
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_23
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    if-nez v3, :cond_2b

    const/4 v0, 0x0

    goto :goto_2e

    :cond_2b
    invoke-interface {v3, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2e} :catch_34
    .catchall {:try_start_23 .. :try_end_2e} :catchall_32

    :goto_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_32
    move-exception v3

    goto :goto_3f

    :catch_34
    move-exception v3

    :try_start_35
    const-string v4, "SystemUIAdapter"

    const-string v5, "clearAllNotificationsAsUser failed with Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    const/4 v0, 0x0

    goto :goto_2e

    :goto_3e
    return v0

    :goto_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public excludeExternalStorageForFailedPasswordsWipeAsUser(IZ)V
    .registers 7

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "excludeExternalStorageForFailedPasswordsWipeAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", exclude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    const-string v1, "SystemUIAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultifactorAuthEnabled() excludeExternalStorageForFailedPasswordsWipeAsUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_51

    if-eqz v0, :cond_51

    return-void

    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v3, :cond_74

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->excludeExternalStorageForFailedPasswordsWipe(Z)V
    :try_end_74
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_74} :catch_81
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_74} :catch_77
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_74} :catch_75

    :cond_74
    goto :goto_5b

    :catch_75
    move-exception v1

    goto :goto_8b

    :catch_77
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "excludeExternalStorageForFailedPasswordsWipe() Failed with RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    :catch_81
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "excludeExternalStorageForFailedPasswordsWipe() failed with NullPointerException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    nop

    :goto_8b
    return-void
.end method

.method public getAdapterId()I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    return v0
.end method

.method public getRegistedCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    return v0
.end method

.method public isComContainerId(I)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_5
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerId(I)Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_16
    .catchall {:try_start_5 .. :try_end_f} :catchall_14

    move v0, v3

    :goto_10
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    :catchall_14
    move-exception v3

    goto :goto_3a

    :catch_16
    move-exception v3

    :try_start_17
    const-string v4, "SystemUIAdapter"

    const-string/jumbo v5, "isComContainerId() has failed. "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_14

    goto :goto_10

    :goto_20
    if-eqz v0, :cond_39

    const-string v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isComContainerId() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return v0

    :goto_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isKnoxStateMonitorRegisted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .registers 8

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSystemUICallback() is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystemUI()Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "registerSystemUICallback() has failed because it\'s only allowed to call by SystemUI "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_27
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    if-eqz v1, :cond_46

    const-string v2, "SystemUIAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerSystemUICallback() has failed because it\'s only allowed user_system, but userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_46
    if-eqz p1, :cond_a0

    const/4 v2, 0x0

    :try_start_49
    iget v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;

    invoke-direct {v5, p0, v3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    invoke-interface {v4, v5, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string v4, "SystemUIAdapter"

    const-string/jumbo v5, "registerSystemUICallback() successfully added"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6c} :catch_6d

    goto :goto_6e

    :catch_6d
    move-exception v3

    :goto_6e
    iput-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    const/4 v0, 0x1

    const-string v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerSystemUICallback() callback has registed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_8e
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_9a
    .catchall {:try_start_8e .. :try_end_91} :catchall_95

    :goto_91
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9c

    :catchall_95
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_9a
    move-exception v2

    goto :goto_91

    :goto_9c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->onKeyguardLaunched()V

    goto :goto_a8

    :cond_a0
    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "registerSystemUICallback() has failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a8
    return v0
.end method

.method public setAirplaneModeAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAirplaneModeAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setAirplaneModeAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setAirplaneModeAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setAirplaneModeAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setApplicationNameControlEnabledAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    const-string/jumbo v1, "setApplicationNameEnabledAsUser()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_16

    return-void

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_39

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setApplicationNameControlEnabled(Z)V
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_39} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_39} :catch_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_39} :catch_3a

    :cond_39
    goto :goto_20

    :catch_3a
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setApplicationNameEnabledAsUser() Failed with Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :catch_44
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setApplicationNameEnabledAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    :catch_4e
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setApplicationNameEnabledAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    nop

    :goto_58
    return-void
.end method

.method public setBluetoothAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setBluetoothAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setBluetoothAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setBluetoothAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setCameraAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setCameraAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setCameraAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setCameraAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setCellularDataAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCellularDataAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setCellularDataAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setCellularDataAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setCellularDataAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setFaceRecognitionEvenCameraBlockedAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFaceRecognitionEvenCameraBlockedAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setFaceRecognitionEvenCameraBlockedAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setFaceRecognitionEvenCameraBlockedAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setFaceRecognitionEvenCameraBlockedAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setGPSStateChangeAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGPSStateChangeAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setGPSStateChangeAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setGPSStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setGPSStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setKioskModeEnabledAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKioskModeEnabled() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setKioskModeEnabled(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setKioskModeEnabled() failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setKioskModeEnabled() failed with NullPointerException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setLocationProviderAllowedAsUser(ILjava/lang/String;Z)V
    .registers 7

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocationProviderAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    :cond_2e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_35

    return-void

    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_58

    invoke-interface {v2, p2, p3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLocationProviderAllowed(Ljava/lang/String;Z)V
    :try_end_58
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_58} :catch_65
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_58} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_59

    :cond_58
    goto :goto_3f

    :catch_59
    move-exception v0

    goto :goto_6f

    :catch_5b
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setLocationProviderAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    :catch_65
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setLocationProviderAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    :goto_6e
    nop

    :goto_6f
    return-void
.end method

.method public setLockedIccIdsAsUser(I[Ljava/lang/String;)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLockedIccIdsAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_25

    return-void

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_48

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockedIccIds([Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_48} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_48} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_48} :catch_49

    :cond_48
    goto :goto_2f

    :catch_49
    move-exception v0

    goto :goto_5f

    :catch_4b
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setLockedIccIdsAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_55
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setLockedIccIdsAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    nop

    :goto_5f
    return-void
.end method

.method public setLockscreenInvisibleOverlayAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLockscreenInvisibleOverlayAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_25

    return-void

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_48

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockscreenInvisibleOverlay(Z)V
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_48} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_48} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_48} :catch_49

    :cond_48
    goto :goto_2f

    :catch_49
    move-exception v0

    goto :goto_5f

    :catch_4b
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setLockscreenInvisibleOverlayAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_55
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setLockscreenInvisibleOverlayAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    nop

    :goto_5f
    return-void
.end method

.method public setLockscreenWallpaperAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLockscreenWallpaperAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_25

    return-void

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_48

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockscreenWallpaper(Z)V
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_48} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_48} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_48} :catch_49

    :cond_48
    goto :goto_2f

    :catch_49
    move-exception v0

    goto :goto_5f

    :catch_4b
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setLockscreenWallpaperAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_55
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setLockscreenWallpaperAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    nop

    :goto_5f
    return-void
.end method

.method public setMaximumFailedPasswordsForDisableAsUser(II)V
    .registers 7

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaximumFailedPasswordsForDisableAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    const-string v1, "SystemUIAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaximumFailedPasswordsForDisableAsUser() isSeparateProfileChallengeEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_51

    if-eqz v0, :cond_51

    return-void

    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v3, :cond_74

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMaximumFailedPasswordsForDisable(I)V
    :try_end_74
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_74} :catch_81
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_74} :catch_77
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_74} :catch_75

    :cond_74
    goto :goto_5b

    :catch_75
    move-exception v1

    goto :goto_8b

    :catch_77
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setMaximumFailedPasswordsForDisable() Failed with RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    :catch_81
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setMaximumFailedPasswordsForDisable() failed with NullPointerException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    nop

    :goto_8b
    return-void
.end method

.method public setMultifactorAuthEnabled(IZ)V
    .registers 7

    const-string v0, "SystemUIAdapter"

    const-string/jumbo v1, "setMultifactorAuthEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    const-string v1, "SystemUIAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultifactorAuthEnabled() isSeparateProfileChallengeEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_3a

    if-eqz v0, :cond_3a

    return-void

    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v3, :cond_5d

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMultifactorAuthEnabled(Z)V
    :try_end_5d
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_5d} :catch_72
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_5d} :catch_68
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5d} :catch_5e

    :cond_5d
    goto :goto_44

    :catch_5e
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setApplicationNameEnabledAsUser() Failed with Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    :catch_68
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setApplicationNameEnabledAsUser() Failed with RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    :catch_72
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setApplicationNameEnabledAsUser() failed with NullPointerException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    :goto_7b
    nop

    :goto_7c
    return-void
.end method

.method public setNFCAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNFCAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNFCAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setNFCAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setNFCAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setNFCStateChangeAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNFCStateChangeAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNFCStateChangeAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setNFCStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setNFCStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setNavigationBarHiddenAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNavigationBarHiddenAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_37

    return-void

    :cond_33
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_5a

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNavigationBarHidden(Z)V
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_5a} :catch_67
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_5a} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5a} :catch_5b

    :cond_5a
    goto :goto_41

    :catch_5b
    move-exception v0

    goto :goto_71

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setNavigationBarHidden() failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    :catch_67
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setNavigationBarHidden() failed with NullPointerException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_70
    :goto_70
    nop

    :goto_71
    return-void
.end method

.method public setPasswordLockDelayAsUser(II)V
    .registers 7

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordLockDelayAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    const-string v1, "SystemUIAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultifactorAuthEnabled() setPasswordLockDelayAsUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_51

    if-eqz v0, :cond_51

    return-void

    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v3, :cond_74

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPasswordLockDelay(I)V
    :try_end_74
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_74} :catch_81
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_74} :catch_77
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_74} :catch_75

    :cond_74
    goto :goto_5b

    :catch_75
    move-exception v1

    goto :goto_8b

    :catch_77
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setPasswordLockDelay() Failed with RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    :catch_81
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setPasswordLockDelay() failed with NullPointerException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    nop

    :goto_8b
    return-void
.end method

.method public setPasswordVisibilityEnabledAsUser(IZ)V
    .registers 7

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordVisibilityEnabledAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", allow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    const-string v1, "SystemUIAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasswordVisibilityEnabledAsUser() isSeparateProfileChallengeEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_51

    if-eqz v0, :cond_51

    return-void

    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v3, :cond_74

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPasswordVisibilityEnabled(Z)V
    :try_end_74
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_74} :catch_81
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_74} :catch_77
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_74} :catch_75

    :cond_74
    goto :goto_5b

    :catch_75
    move-exception v1

    goto :goto_8b

    :catch_77
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setPasswordVisibilityEnabled() Failed with RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    :catch_81
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setPasswordVisibilityEnabled() failed with NullPointerException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    nop

    :goto_8b
    return-void
.end method

.method public setPwdChangeRequestedAsUser(II)V
    .registers 7

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPwdChangeRequestedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    const-string v1, "SystemUIAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultifactorAuthEnabled() setPwdChangeRequestedAsUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_51

    if-eqz v0, :cond_51

    return-void

    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v3, :cond_74

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPwdChangeRequested(I)V
    :try_end_74
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_74} :catch_81
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_74} :catch_77
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_74} :catch_75

    :cond_74
    goto :goto_5b

    :catch_75
    move-exception v1

    goto :goto_8b

    :catch_77
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setPwdChangeRequested() Failed with RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    :catch_81
    move-exception v1

    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "setPwdChangeRequested() failed with NullPointerException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    nop

    :goto_8b
    return-void
.end method

.method public setSettingsChangeAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSettingsChangeAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setSettingsChangeAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setSettingsChangeAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setSettingsChangeAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setStatusBarExpansionAllowedAsUser(IZLjava/lang/String;)V
    .registers 11

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatusBarExpansionAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_37

    return-void

    :cond_33
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    :cond_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_3b
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    if-eqz v2, :cond_75

    if-eqz p2, :cond_5c

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "knoxmdm_key_statusbar_disable_expansion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_75

    :cond_5c
    const/high16 v3, 0x10000

    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "knoxmdm_key_statusbar_disable_expansion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_75} :catch_7b
    .catchall {:try_start_3b .. :try_end_75} :catchall_79

    :cond_75
    :goto_75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_85

    :catchall_79
    move-exception v2

    goto :goto_c0

    :catch_7b
    move-exception v2

    :try_start_7c
    const-string v3, "SystemUIAdapter"

    const-string/jumbo v4, "setStatusBarExpansionAllowedAsUser() failed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_79

    goto :goto_75

    :goto_85
    :try_start_85
    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v4, :cond_a8

    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setStatusBarExpansionAllowed(Z)V
    :try_end_a8
    .catch Ljava/lang/NullPointerException; {:try_start_85 .. :try_end_a8} :catch_b5
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_a8} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a8} :catch_a9

    :cond_a8
    goto :goto_8f

    :catch_a9
    move-exception v2

    goto :goto_bf

    :catch_ab
    move-exception v2

    const-string v3, "SystemUIAdapter"

    const-string/jumbo v4, "setStatusBarExpansionAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_be

    :catch_b5
    move-exception v2

    const-string v3, "SystemUIAdapter"

    const-string/jumbo v4, "setStatusBarExpansionAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    :goto_be
    nop

    :goto_bf
    return-void

    :goto_c0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setStatusBarHiddenAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatusBarHiddenAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_37

    return-void

    :cond_33
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_5a

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setStatusBarHidden(Z)V
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_5a} :catch_67
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_5a} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5a} :catch_5b

    :cond_5a
    goto :goto_41

    :catch_5b
    move-exception v0

    goto :goto_71

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setStatusBarHidden() failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    :catch_67
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setStatusBarHidden() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    nop

    :goto_71
    return-void
.end method

.method public setWifiAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setWifiAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setWifiAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setWifiStateChangeAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiStateChangeAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiStateChangeAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setWifiStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setWifiStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public setWifiTetheringAllowedAsUser(IZ)V
    .registers 6

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiTetheringAllowedAsUser() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v2, :cond_50

    invoke-interface {v2, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiTetheringAllowed(Z)V
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_50} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    :cond_50
    goto :goto_37

    :catch_51
    move-exception v0

    goto :goto_67

    :catch_53
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setWifiTetheringAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    const-string v1, "SystemUIAdapter"

    const-string/jumbo v2, "setWifiTetheringAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    nop

    :goto_67
    return-void
.end method

.method public updateSystemUIMonitor(I)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSystemUIMonitor() has failed because not system call, userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-ltz p1, :cond_47

    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    if-eq v0, p1, :cond_45

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSystemUIMonitor() userId has changed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    :cond_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4b
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_69

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    iget v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_71

    :cond_69
    const-string v2, "SystemUIAdapter"

    const-string/jumbo v3, "updateSystemUIMonitor() cannot call because context is null. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_71} :catch_77
    .catchall {:try_start_4b .. :try_end_71} :catchall_75

    :goto_71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_90

    :catchall_75
    move-exception v2

    goto :goto_91

    :catch_77
    move-exception v2

    :try_start_78
    const-string v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSystemUIMonitor() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_78 .. :try_end_8f} :catchall_75

    goto :goto_71

    :goto_90
    return-void

    :goto_91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
