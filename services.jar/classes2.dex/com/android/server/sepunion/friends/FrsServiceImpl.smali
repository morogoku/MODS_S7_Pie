.class public Lcom/android/server/sepunion/friends/FrsServiceImpl;
.super Lcom/samsung/android/mateservice/IMateService$Stub;
.source "FrsServiceImpl.java"


# static fields
.field private static final HISTORY_COUNT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "FrsImpl"


# instance fields
.field private mBootPhase:I

.field private final mContext:Landroid/content/Context;

.field private final mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

.field private final mDumps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/sepunion/friends/common/Dump;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

.field private final mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    invoke-direct {p0}, Lcom/samsung/android/mateservice/IMateService$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    iput-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/sepunion/friends/common/LoggerImpl;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/friends/common/LoggerImpl;-><init>(I)V

    new-instance v2, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

    invoke-direct {v2, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;

    invoke-direct {v3, p1, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/common/Logger;)V

    iput-object v3, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v3, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;

    invoke-direct {v3}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;-><init>()V

    new-instance v4, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;

    iget-object v5, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v6, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$7IHRb86vcGQfGvMQPfjLwj89TBg;

    invoke-direct {v6, p0}, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$7IHRb86vcGQfGvMQPfjLwj89TBg;-><init>(Lcom/android/server/sepunion/friends/FrsServiceImpl;)V

    invoke-direct {v4, v1, v5, v6}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;-><init>(Lcom/android/server/sepunion/friends/common/Logger;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;Ljava/util/function/Function;)V

    new-instance v5, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;

    invoke-direct {v5}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;-><init>()V

    new-instance v6, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;

    invoke-direct {v6, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-direct {v7, v2, v1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;-><init>(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;Lcom/android/server/sepunion/friends/common/Logger;)V

    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_e0

    invoke-virtual {v7, v4, v8}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [I

    const v10, 0x120002

    aput v10, v9, v0

    invoke-virtual {v7, v5, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v9, 0x4

    new-array v10, v9, [I

    fill-array-data v10, :array_ee

    invoke-virtual {v7, v3, v10}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    iget-object v10, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    check-cast v10, Lcom/android/server/sepunion/friends/action/ActionExecutable;

    new-array v11, v8, [I

    const v12, 0x120005

    aput v12, v11, v0

    invoke-virtual {v7, v10, v11}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    new-array v9, v9, [I

    fill-array-data v9, :array_fa

    invoke-virtual {v7, v2, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_106

    invoke-virtual {v7, v6, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;

    iget-object v10, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-direct {v9, v10}, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;-><init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V

    new-array v10, v8, [I

    const v11, 0x210002

    aput v11, v10, v0

    invoke-virtual {v7, v9, v10}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;

    iget-object v10, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-direct {v9, v10}, Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;-><init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V

    invoke-virtual {v7, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setDefault(Lcom/android/server/sepunion/friends/action/ActionExecutable;)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v7

    if-eqz v7, :cond_c6

    new-instance v7, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-direct {v7, p1, v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v7, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    iget-object v7, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    new-array v9, v8, [I

    const v10, 0x12000a

    aput v10, v9, v0

    invoke-virtual {v7, v4, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;

    invoke-direct {v9, p1}, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;-><init>(Landroid/content/Context;)V

    new-array v8, v8, [I

    const v10, 0x210003

    aput v10, v8, v0

    invoke-virtual {v7, v9, v8}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    goto :goto_c9

    :cond_c6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    :goto_c9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :array_e0
    .array-data 4
        0x110001
        0x140001
        0x140002
        0x120012
        0x120001
    .end array-data

    :array_ee
    .array-data 4
        0x120003
        0x120004
        0x120010
        0x120011
    .end array-data

    :array_fa
    .array-data 4
        0x120006
        0x120007
        0x120008
        0x120009
    .end array-data

    :array_106
    .array-data 4
        0x12000b
        0x12000c
        0x12000d
        0x12000e
        0x12000f
        0x120013
    .end array-data
.end method

.method private executeBootPhaseActions()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setAcceptable(Z)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    return-void
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

    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->isProductDev()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->logLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->useSafeString()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-enter p0

    :try_start_39
    iget-object v1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/friends/common/Dump;

    invoke-interface {v2, v0}, Lcom/android/server/sepunion/friends/common/Dump;->getDump(Ljava/lang/StringBuilder;)V

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

    invoke-direct {p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_37

    if-eqz v1, :cond_37

    new-instance v4, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iget-object v5, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;

    invoke-direct {v5, v1, v2, v0}, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;-><init>([B[BZ)V

    invoke-virtual {v4, v5}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/os/Bundle;

    :cond_37
    return-object v3
.end method

.method private isShellEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic lambda$7IHRb86vcGQfGvMQPfjLwj89TBg(Lcom/android/server/sepunion/friends/FrsServiceImpl;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$hasMappedAccessory$0([B[BZLcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 5

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mappedAccessory([B[BZ)Z

    move-result v0

    return v0
.end method

.method private sendSysEvent(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1a

    :cond_d
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    const v1, 0x210003

    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->createBundle(II)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string v0, "FrsImpl"

    const-string v1, "dump"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "FrsImpl"

    const-string/jumbo v1, "permission denied - pid[%d] uid[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_35
    :try_start_35
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->getDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_44
    return-void
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    const-string v0, "FrsImpl"

    const-string v1, "executeAction 0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

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

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    iget v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

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

    invoke-direct {p0, v1, v0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    goto :goto_4e

    :cond_31
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, v2}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    goto :goto_4e

    :cond_37
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    :cond_48
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {v0, v2}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setAcceptable(Z)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

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

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ed

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

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

    invoke-direct {v9}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_4a

    iget-object v0, v9, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

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

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, v9, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    const-string v0, "FrsImpl"

    const-string/jumbo v1, "onShellCommand [end]"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

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

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ec

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

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

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    if-nez p1, :cond_26

    const/4 v2, 0x1

    nop

    :cond_26
    invoke-interface {v0, v2}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    :cond_29
    const/16 v0, 0x3eb

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

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

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method
