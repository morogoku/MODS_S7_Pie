.class public Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
.super Ljava/lang/Object;
.source "PersonaManagerAdapter.java"


# static fields
.field public static final DEFAULT_KNOX_NAME:Ljava/lang/String;

.field public static final KNOX_SWITCHER_PKG:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final MAX_PERSONA_ID:I = 0xc8

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final SECOND_KNOX_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PersonaManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;


# instance fields
.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKeguardMgr:Landroid/app/KeyguardManager;

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRCPInterface:Landroid/content/IRCPInterface;

.field private mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private mUserMgr:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->SECOND_KNOX_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    if-nez v1, :cond_12

    if-eqz p0, :cond_12

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    :cond_12
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static getKnoxContainerVersionString()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 4

    if-eqz p1, :cond_12

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    return-object v0
.end method

.method public static isDoEnabled(I)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isKnoxVersionSupported(I)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    return v0
.end method

.method public static isLegacyContainer(I)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isValidKnoxId(I)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public exists(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v0

    return v0
.end method

.method public getActivePersonas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCOMContainerOrOwnerUserId()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonas(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    :cond_1c
    return v0
.end method

.method public getContainerIcon(I)[B
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    const-string v0, "custom-container-icon"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContainerName(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v1

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFocusedUserWithActivityManager()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    :goto_11
    move v1, v0

    goto :goto_24

    :cond_13
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_25

    goto :goto_11

    :goto_24
    goto :goto_2e

    :catch_25
    move-exception v0

    const-string v2, "PersonaManagerAdapter"

    const-string/jumbo v3, "getFocusedUserWithActivityManager() failed. so return owner id"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return v1
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId(I)I
    .registers 4

    move v0, p1

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    :cond_d
    return v0
.end method

.method public getPersonaIds()[I
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_33

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_34

    move v2, v5

    goto :goto_1c

    :cond_32
    return-object v1

    :cond_33
    goto :goto_3d

    :catch_34
    move-exception v0

    const-string v1, "PersonaManagerAdapter"

    const-string/jumbo v2, "getPersonaIds() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2e

    goto :goto_11

    :cond_2d
    goto :goto_37

    :catch_2e
    move-exception v1

    const-string v2, "PersonaManagerAdapter"

    const-string/jumbo v3, "getPersonas() failed. so return empty list"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return-object v0
.end method

.method public getProfileGroupId(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    return v0
.end method

.method public getProfilesForOwner(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getRCPManager()Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    :cond_16
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    return-object v0
.end method

.method public getRCPManager()Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    return-object v0
.end method

.method public isActivePersona(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    return v1

    :cond_14
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public isBYODId(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isComContainerExistOnDevice()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isComContainerId(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isDeletingPersona(I)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public isDeviceLocked(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceSecure(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isManagedProfile(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method public isMyKnoxUser(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isPersonaEnabled(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    return v1

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public isPersonaRunning()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPremiumUser(I)Z
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    return v0
.end method

.method public isSecureFolderId(I)Z
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    return v0
.end method

.method public setIsFingerAsSupplement(IZ)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
