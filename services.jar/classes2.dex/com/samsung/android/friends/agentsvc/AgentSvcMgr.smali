.class public Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;
.super Ljava/lang/Object;
.source "AgentSvcMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;
.implements Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final RETRY_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AgentSvcMgr"


# instance fields
.field private final mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

.field private final mCompName:Landroid/content/ComponentName;

.field private mContPreserved:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mEnabled:Z

.field private final mLockCont:Ljava/lang/Object;

.field private final mLogger:Lcom/samsung/android/friends/common/Logger;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/friends/common/Logger;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    iput-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    iput-object p2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    new-instance v0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;-><init>(Landroid/content/Context;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.mateagent"

    const-string v2, "com.samsung.android.mateagent.interact.AgentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    return-void
.end method

.method private changeRefCount(Z)I
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    goto :goto_16

    :catchall_a
    move-exception v0

    goto :goto_1a

    :cond_c
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    if-lez v0, :cond_16

    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    :cond_16
    :goto_16
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    monitor-exit p0

    return v0

    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_a

    throw v0
.end method

.method private existAgentSvc()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_14

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    return v0

    :catch_14
    move-exception v1

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_21
    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_24
    return v0
.end method

.method private getConnectedSvc()Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->existAgentSvc()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->connect()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    return-object v0

    :cond_16
    invoke-virtual {p0, v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    goto :goto_24

    :cond_1a
    const-string v0, "AgentSvcMgr"

    const-string/jumbo v2, "no FSvc"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContPreserved()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getRefCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private resetRefCount()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method


# virtual methods
.method public closeable()Z
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v2

    const-string v3, "AgentSvcMgr"

    const-string v4, "closeable %d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez v1, :cond_26

    if-nez v2, :cond_26

    move v0, v7

    nop

    :cond_26
    return v0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 6

    if-eqz p1, :cond_19

    const-string v0, "keepConnectionState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getRefCount()I

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->close()V

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return v0
.end method

.method public perform(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    invoke-virtual {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v3, "AgentSvcMgr"

    const-string/jumbo v4, "skipped action 0x%x - app cannot start"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    return-object v1

    :cond_26
    const/4 v0, 0x2

    move v3, v0

    move-object v0, v1

    :cond_29
    :try_start_29
    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getConnectedSvc()Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;

    move-result-object v4
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_86
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_86
    .catchall {:try_start_29 .. :try_end_2d} :catchall_84

    if-eqz v4, :cond_4c

    :try_start_2f
    const-string v5, "AgentSvcMgr"

    const-string v6, "FSvc is connected"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v4, p1, p2}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3d} :catch_4a
    .catchall {:try_start_2f .. :try_end_3d} :catchall_46

    move-object v0, v5

    if-eqz v4, :cond_43

    :try_start_40
    invoke-interface {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_86
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_86
    .catchall {:try_start_40 .. :try_end_43} :catchall_84

    :cond_43
    add-int/lit8 v3, v3, -0x1

    goto :goto_8f

    :catchall_46
    move-exception v5

    move v6, v3

    move-object v3, v1

    goto :goto_6d

    :catch_4a
    move-exception v5

    goto :goto_67

    :cond_4c
    :try_start_4c
    iget-object v5, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    if-eqz v5, :cond_61

    iget-object v5, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v6, "AgentSvcMgr"

    const-string v7, "failed to connect FSvc"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_61} :catch_4a
    .catchall {:try_start_4c .. :try_end_61} :catchall_46

    :cond_61
    if-eqz v4, :cond_8a

    :try_start_63
    invoke-interface {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_66} :catch_86
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_86
    .catchall {:try_start_63 .. :try_end_66} :catchall_84

    goto :goto_8a

    :goto_67
    :try_start_67
    throw v5
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v6

    move-object v9, v6

    move v6, v3

    move-object v3, v5

    move-object v5, v9

    :goto_6d
    if-eqz v4, :cond_7d

    if-eqz v3, :cond_7a

    :try_start_71
    invoke-interface {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_75
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_74} :catch_81
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_81
    .catchall {:try_start_71 .. :try_end_74} :catchall_7e

    goto :goto_7d

    :catch_75
    move-exception v7

    :try_start_76
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7d

    :cond_7a
    invoke-interface {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V

    :cond_7d
    :goto_7d
    throw v5
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7e} :catch_81
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7e} :catch_81
    .catchall {:try_start_76 .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v1

    move v3, v6

    goto :goto_90

    :catch_81
    move-exception v4

    move v3, v6

    goto :goto_87

    :catchall_84
    move-exception v1

    goto :goto_90

    :catch_86
    move-exception v4

    :goto_87
    :try_start_87
    invoke-static {v4}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_84

    :cond_8a
    :goto_8a
    add-int/lit8 v3, v3, -0x1

    nop

    if-gtz v3, :cond_29

    :goto_8f
    return-object v0

    :goto_90
    add-int/lit8 v3, v3, -0x1

    throw v1
.end method

.method public setContPreserved(Z)V
    .registers 7

    const-string v0, "AgentSvcMgr"

    const-string/jumbo v1, "setContPreserved %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    :try_start_20
    iput-boolean p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    if-nez p1, :cond_28

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->resetRefCount()V

    :cond_28
    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return-void
.end method
