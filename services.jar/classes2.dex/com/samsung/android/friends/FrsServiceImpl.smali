.class public Lcom/samsung/android/friends/FrsServiceImpl;
.super Lcom/samsung/android/mateservice/IMateService$Stub;
.source "FrsServiceImpl.java"

# interfaces
.implements Lcom/samsung/android/friends/ServiceLifeCycle;


# static fields
.field private static final HISTORY_COUNT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "FrsImpl"


# instance fields
.field private mBootPhase:I

.field private final mContext:Landroid/content/Context;

.field private final mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

.field private final mDumps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/friends/common/Dump;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

.field private final mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

.field private final mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

.field private mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    invoke-direct {p0}, Lcom/samsung/android/mateservice/IMateService$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mBootPhase:I

    iput-object p1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/friends/common/LoggerImpl;

    invoke-direct {p0}, Lcom/samsung/android/friends/FrsServiceImpl;->getLoggerCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/friends/common/LoggerImpl;-><init>(I)V

    new-instance v2, Lcom/samsung/android/friends/executable/ExecAccessMgr;

    invoke-direct {v2, p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;

    invoke-direct {v3, p1, v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;-><init>(Landroid/content/Context;Lcom/samsung/android/friends/common/Logger;)V

    iput-object v3, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v3, Lcom/samsung/android/friends/executable/ExecStringCrypto;

    invoke-direct {v3}, Lcom/samsung/android/friends/executable/ExecStringCrypto;-><init>()V

    new-instance v4, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;

    iget-object v5, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v6, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$vY8ORJWQxNNk6wv2Kr8pLTW_L3U;

    invoke-direct {v6, p0}, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$vY8ORJWQxNNk6wv2Kr8pLTW_L3U;-><init>(Lcom/samsung/android/friends/FrsServiceImpl;)V

    invoke-direct {v4, v1, v5, v6}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;-><init>(Lcom/samsung/android/friends/common/Logger;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;Ljava/util/function/Function;)V

    new-instance v5, Lcom/samsung/android/friends/executable/ExecClientStateMgr;

    invoke-direct {v5}, Lcom/samsung/android/friends/executable/ExecClientStateMgr;-><init>()V

    new-instance v6, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;

    invoke-direct {v6, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/samsung/android/friends/action/ActionDispatcher;

    invoke-direct {v7, v2, v1}, Lcom/samsung/android/friends/action/ActionDispatcher;-><init>(Lcom/samsung/android/friends/executable/ExecAccessMgr;Lcom/samsung/android/friends/common/Logger;)V

    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_f6

    invoke-virtual {v7, v4, v8}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [I

    const v10, 0x120002

    aput v10, v9, v0

    invoke-virtual {v7, v5, v9}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v9, 0x4

    new-array v10, v9, [I

    fill-array-data v10, :array_104

    invoke-virtual {v7, v3, v10}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    check-cast v10, Lcom/samsung/android/friends/action/ActionExecutable;

    new-array v11, v8, [I

    const v12, 0x120005

    aput v12, v11, v0

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    new-array v9, v9, [I

    fill-array-data v9, :array_110

    invoke-virtual {v7, v2, v9}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_11c

    invoke-virtual {v7, v6, v9}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;

    iget-object v10, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-direct {v9, v10}, Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;-><init>(Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;)V

    new-array v10, v8, [I

    const v11, 0x210002

    aput v11, v10, v0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/samsung/android/friends/executable/ExecAgentSvcRelay;

    iget-object v10, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-direct {v9, v10}, Lcom/samsung/android/friends/executable/ExecAgentSvcRelay;-><init>(Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;)V

    invoke-virtual {v7, v9}, Lcom/samsung/android/friends/action/ActionDispatcher;->setDefault(Lcom/samsung/android/friends/action/ActionExecutable;)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v7

    if-eqz v7, :cond_c8

    new-instance v7, Lcom/samsung/android/friends/shell/ShellCommandImpl;

    invoke-direct {v7, p1, v0}, Lcom/samsung/android/friends/shell/ShellCommandImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v7, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    iget-object v7, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    new-array v9, v8, [I

    const v10, 0x12000a

    aput v10, v9, v0

    invoke-virtual {v7, v4, v9}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/samsung/android/friends/executable/ExecSysEventDeliver;

    invoke-direct {v9, p1}, Lcom/samsung/android/friends/executable/ExecSysEventDeliver;-><init>(Landroid/content/Context;)V

    new-array v8, v8, [I

    const v10, 0x210003

    aput v10, v8, v0

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    goto :goto_cb

    :cond_c8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    :goto_cb
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    iput-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    return-void

    :array_f6
    .array-data 4
        0x110001
        0x140001
        0x140002
        0x120012
        0x120001
    .end array-data

    :array_104
    .array-data 4
        0x120003
        0x120004
        0x120010
        0x120011
    .end array-data

    :array_110
    .array-data 4
        0x120006
        0x120007
        0x120008
        0x120009
    .end array-data

    :array_11c
    .array-data 4
        0x12000b
        0x12000c
        0x12000d
        0x12000e
        0x12000f
        0x120013
    .end array-data
.end method

.method private getDump()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "************************************************************************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "productDev: %s / logLevel: %d  / safeString: %s\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->logLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->useSafeString()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-enter p0

    :try_start_39
    iget-object v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/friends/common/Dump;

    invoke-interface {v2, v0}, Lcom/samsung/android/friends/common/Dump;->getDump(Ljava/lang/StringBuilder;)V

    goto :goto_3f

    :cond_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_5a

    const-string v1, "\n************************************************************************"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private getLoggerCount()I
    .registers 2

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    :goto_f
    const/16 v0, 0x28

    :goto_11
    return v0
.end method

.method private hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    const-string v0, "attached"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "extraData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_37

    if-eqz v1, :cond_37

    new-instance v4, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;

    iget-object v5, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;

    invoke-direct {v5, v1, v2, v0}, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;-><init>([B[BZ)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/os/Bundle;

    :cond_37
    return-object v3
.end method

.method private isShellEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    invoke-virtual {v0}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$hasMappedAccessory$0([B[BZLcom/samsung/android/friends/cmdsvc/CmdSvc;)Z
    .registers 5

    invoke-virtual {p3, p0, p1, p2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mappedAccessory([B[BZ)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$vY8ORJWQxNNk6wv2Kr8pLTW_L3U(Lcom/samsung/android/friends/FrsServiceImpl;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private sendSysEvent(II)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    invoke-virtual {v0}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1f

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    const v1, 0x210003

    invoke-static {p1, p2}, Lcom/samsung/android/friends/executable/ExecSysEventDeliver;->createBundle(II)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_1e
    return-void

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_e

    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    iput-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    const-string v1, "friends"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "FrsImpl"

    const-string v1, "executeAction 0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    const-string/jumbo v1, "plugin"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_31

    const-string v0, "FrsImpl"

    const-string v1, "create SemPluginManagerService"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    const-string/jumbo v1, "plugin"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->createSemSystemService(Ljava/lang/String;)V

    :cond_31
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_3f

    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    iput-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mPluginLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_4a
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 5

    const-string v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mBootPhase:I

    iget v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mBootPhase:I

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_37

    const/16 v1, 0x258

    if-eq v0, v1, :cond_31

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2c

    goto :goto_4e

    :cond_2c
    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    goto :goto_4e

    :cond_31
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, v2}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    goto :goto_4e

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    :cond_48
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    invoke-virtual {v0, v2}, Lcom/samsung/android/friends/action/ActionDispatcher;->setAcceptable(Z)Lcom/samsung/android/friends/action/ActionDispatcher;

    nop

    :goto_4e
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 5

    const-string v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ed

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    invoke-direct {v9}, Lcom/samsung/android/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_4a

    iget-object v0, v9, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_4a

    :cond_11
    const-string v0, "FrsImpl"

    const-string/jumbo v1, "onShellCommand [start] pid[%d] uid[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, v9, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    const-string v0, "FrsImpl"

    const-string/jumbo v1, "onShellCommand [end]"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_4a
    :goto_4a
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_52

    move-object v3, p3

    goto :goto_53

    :cond_52
    move-object v3, p2

    :goto_53
    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    const/4 v3, 0x0

    :try_start_5b
    const-string v0, "No shell command implemented."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_60} :catch_6f
    .catchall {:try_start_5b .. :try_end_60} :catchall_69

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    move-object/from16 v4, p6

    invoke-virtual {v4, v10, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :catchall_69
    move-exception v0

    move-object/from16 v4, p6

    :goto_6c
    move-object v5, v3

    move-object v3, v0

    goto :goto_76

    :catch_6f
    move-exception v0

    move-object/from16 v4, p6

    move-object v3, v0

    :try_start_73
    throw v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    goto :goto_6c

    :goto_76
    if-eqz v5, :cond_82

    :try_start_78
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_85

    :catch_7c
    move-exception v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_85

    :cond_82
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :goto_85
    throw v3
.end method

.method public onStartUser(I)V
    .registers 5

    const-string v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onStopUser(I)V
    .registers 5

    const-string v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ec

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6

    const-string v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mBootPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_29

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    if-nez p1, :cond_26

    const/4 v2, 0x1

    nop

    :cond_26
    invoke-interface {v0, v2}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    :cond_29
    const/16 v0, 0x3eb

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 5

    const-string v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method
