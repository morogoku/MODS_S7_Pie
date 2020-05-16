.class Lcom/android/server/pm/EmergencyModePackageHandler;
.super Ljava/lang/Object;
.source "EmergencyModePackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;,
        Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field static final EM_CANCEL_SENDING_BROADCAST:I = 0x5

.field static final EM_CHECK_TIMEOUT_OF_BROADCAST:I = 0x3

.field static final EM_MAKE_PENDING_BROADCAST:I = 0x1

.field static final EM_SEND_FINISHING_INTENT:I = 0x4

.field static final EM_SEND_PENDING_BROADCAST:I = 0x2

.field static final TAG:Ljava/lang/String; = "EMPkgHandler"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

.field final mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

.field final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field final mSettings:Lcom/android/server/pm/Settings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/ProtectedPackages;Landroid/os/Looper;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/Settings;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/ProtectedPackages;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-direct {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    iput-object p3, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    iput-object p5, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    new-instance v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;-><init>(Lcom/android/server/pm/EmergencyModePackageHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/EmergencyModePackageHandler;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    return-void
.end method

.method private handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[I[Z[II)I"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p6

    const-string v2, "EMPkgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePendingBroadcastsForBurst size["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-gtz v1, :cond_22

    return v2

    :cond_22
    const/4 v3, 0x0

    move v4, v3

    move v3, v2

    :goto_25
    iget-object v5, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v5}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->userIdCount()I

    move-result v5

    if-ge v3, v5, :cond_e6

    iget-object v5, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->userIdAt(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->packagesForUserId(I)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v7, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->packagesNewStateForUserId(I)Ljava/util/LinkedHashMap;

    move-result-object v7

    :goto_47
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_de

    if-ge v4, v1, :cond_de

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    iget-object v9, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    if-eqz v9, :cond_d6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, p1, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    aput-object v10, p2, v4

    iget v10, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    aput v10, p3, v4

    aget-object v10, p1, v4

    invoke-virtual {v7, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, p5, v4

    const/4 v2, 0x1

    if-ne v10, v2, :cond_93

    aput-boolean v2, p4, v4

    move v12, v5

    :goto_91
    const/4 v1, 0x0

    goto :goto_d3

    :cond_93
    if-nez v10, :cond_cf

    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    aget-object v1, p1, v4

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_ac

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_ac

    const/4 v2, 0x1

    aput-boolean v2, p4, v4

    move v12, v5

    goto :goto_ce

    :cond_ac
    const/4 v2, 0x0

    aput-boolean v2, p4, v4

    const-string v2, "EMPkgHandler"

    move-object v11, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v12, v5

    const-string v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] newState is COMPONENT_ENABLED_STATE_DEFAULT. But manifest says default state is disabled. So we kill this."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ce
    goto :goto_91

    :cond_cf
    move v12, v5

    const/4 v1, 0x0

    aput-boolean v1, p4, v4

    :goto_d3
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    :cond_d6
    move v1, v2

    move v12, v5

    :goto_d8
    move v2, v1

    move v5, v12

    move/from16 v1, p6

    goto/16 :goto_47

    :cond_de
    move v1, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move/from16 v1, p6

    goto/16 :goto_25

    :cond_e6
    iget-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->clear()V

    return v4
.end method

.method private sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/IIntentReceiver;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v13, p1

    invoke-virtual {v3, v13, v2}, Lcom/android/server/pm/PackageManagerService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_17

    sget-object v6, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    goto :goto_1b

    :cond_17
    new-array v6, v4, [I

    aput v2, v6, v5

    :goto_1b
    move-object v14, v6

    if-eqz v3, :cond_24

    new-array v6, v4, [I

    aput v2, v6, v5

    :goto_22
    move-object v12, v6

    goto :goto_27

    :cond_24
    sget-object v6, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    goto :goto_22

    :goto_27
    new-instance v6, Landroid/os/Bundle;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(I)V

    move-object v15, v6

    const-string v6, "android.intent.extra.changed_component_name"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v11, v6, [Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v15, v6, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "android.intent.extra.DONT_KILL_APP"

    move/from16 v10, p2

    invoke-virtual {v15, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "android.intent.extra.UID"

    move/from16 v9, p4

    invoke-virtual {v15, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "EM_PKG_HADNLER_ID"

    move/from16 v8, p6

    invoke-virtual {v15, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    const/high16 v16, 0x10000000

    const/16 v17, 0x0

    new-array v4, v4, [I

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    aput v18, v4, v5

    move-object/from16 v18, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v13

    move-object v7, v15

    move/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, p5

    move-object/from16 v16, v11

    move-object/from16 v11, v18

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    return-void
.end method


# virtual methods
.method public cancelEMPHandlerSendPendingBroadcast()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "EMPkgHandler"

    const-string v1, "cancelEMHandlerSendPendingBroadcast : Already done"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    :cond_1a
    return-void
.end method

.method getEMPackageHanderObj()Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    return-object v0
.end method

.method getPendingBroadcastsForBurst()Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    return-object v0
.end method

.method public getProgressionOfPackageChanged()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->getProgressionOfPackageChanged()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method isKnox(I)Z
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method

.method public setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    if-eqz p1, :cond_224

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_224

    :cond_12
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    if-nez p7, :cond_27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_29

    :cond_27
    move-object/from16 v12, p7

    :goto_29
    and-int/lit8 v0, p3, -0x2

    or-int/lit8 v13, v0, 0x4

    const-string v0, "EMPkgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApplicationEnabledSettingWithList usePending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  Start now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    array-length v6, v7

    const/16 v21, 0x0

    move/from16 v5, v21

    :goto_63
    if-ge v5, v6, :cond_165

    aget v4, v7, v5

    invoke-virtual {v8, v4}, Lcom/android/server/pm/EmergencyModePackageHandler;->isKnox(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    const-string v0, "EMPkgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApplicationEnabledSettingWithList- skip knox user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    goto/16 :goto_15d

    :cond_8d
    const-string v0, "EMPkgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApplicationEnabledSettingWithList - user id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_157

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    const-string v0, "EMPkgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    const-string/jumbo v3, "setApplicationEnabledSettingWithList- skip ProtectedPackage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    move-object/from16 v3, v22

    goto :goto_a8

    :cond_da
    move-object/from16 v22, v3

    :try_start_dc
    iget-object v1, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;
    :try_end_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dc .. :try_end_de} :catch_123
    .catch Ljava/lang/SecurityException; {:try_start_dc .. :try_end_de} :catch_f9

    const/4 v3, 0x0

    move-object/from16 v23, v2

    move/from16 v24, v4

    move/from16 v4, p2

    move/from16 v25, v5

    move v5, v13

    move/from16 v26, v6

    move/from16 v6, v24

    move-object/from16 v27, v7

    move-object v7, v12

    :try_start_ef
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettingEMPkgHndlr(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ef .. :try_end_f2} :catch_f5
    .catch Ljava/lang/SecurityException; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_149

    :catch_f3
    move-exception v0

    goto :goto_104

    :catch_f5
    move-exception v0

    move-object/from16 v3, v23

    goto :goto_12d

    :catch_f9
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    :goto_104
    const-string v1, "EMPkgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changing not allowed. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_14a

    :catch_123
    move-exception v0

    move-object v3, v2

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    :goto_12d
    const-string v1, "EMPkgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is illegal package. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_149
    nop

    :goto_14a
    nop

    move-object/from16 v3, v22

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move-object/from16 v7, v27

    goto/16 :goto_a8

    :cond_157
    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    :goto_15d
    add-int/lit8 v5, v25, 0x1

    move/from16 v6, v26

    move-object/from16 v7, v27

    goto/16 :goto_63

    :cond_165
    move-object/from16 v27, v7

    const-string v0, "EMPkgHandler"

    const-string/jumbo v1, "setApplicationEnabledSettingWithList"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_172
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    if-eqz v9, :cond_196

    if-eqz v10, :cond_192

    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_192

    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v11, v0, Landroid/os/Message;->arg1:I

    iget-object v1, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendMessage(Landroid/os/Message;)Z

    nop

    :cond_192
    move-object/from16 v22, v7

    goto/16 :goto_1fe

    :cond_196
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    if-eqz v0, :cond_192

    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->size()I

    move-result v0
    :try_end_1a0
    .catchall {:try_start_172 .. :try_end_1a0} :catchall_21d

    move v1, v0

    if-gtz v1, :cond_1aa

    :try_start_1a3
    monitor-exit v7
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a5

    return-void

    :catchall_1a5
    move-exception v0

    move/from16 v19, v1

    goto/16 :goto_21e

    :cond_1aa
    :try_start_1aa
    new-array v2, v1, [Ljava/lang/String;
    :try_end_1ac
    .catchall {:try_start_1aa .. :try_end_1ac} :catchall_1f8

    :try_start_1ac
    new-array v3, v1, [Ljava/util/ArrayList;
    :try_end_1ae
    .catchall {:try_start_1ac .. :try_end_1ae} :catchall_1f1

    :try_start_1ae
    new-array v4, v1, [I
    :try_end_1b0
    .catchall {:try_start_1ae .. :try_end_1b0} :catchall_1e9

    :try_start_1b0
    new-array v5, v1, [Z
    :try_end_1b2
    .catchall {:try_start_1b0 .. :try_end_1b2} :catchall_1df

    :try_start_1b2
    new-array v6, v1, [I
    :try_end_1b4
    .catchall {:try_start_1b2 .. :try_end_1b4} :catchall_1d3

    move/from16 v19, v1

    move-object v1, v8

    move-object/from16 v22, v7

    move/from16 v7, v19

    :try_start_1bb
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v0
    :try_end_1bf
    .catchall {:try_start_1bb .. :try_end_1bf} :catchall_1c9

    move v1, v0

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_200

    :catchall_1c9
    move-exception v0

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_220

    :catchall_1d3
    move-exception v0

    move/from16 v19, v1

    move-object/from16 v22, v7

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1fd

    :catchall_1df
    move-exception v0

    move/from16 v19, v1

    move-object/from16 v22, v7

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    goto :goto_1fd

    :catchall_1e9
    move-exception v0

    move/from16 v19, v1

    move-object/from16 v22, v7

    move-object v14, v2

    move-object v15, v3

    goto :goto_1fd

    :catchall_1f1
    move-exception v0

    move/from16 v19, v1

    move-object/from16 v22, v7

    move-object v14, v2

    goto :goto_1fd

    :catchall_1f8
    move-exception v0

    move/from16 v19, v1

    move-object/from16 v22, v7

    :goto_1fd
    goto :goto_220

    :goto_1fe
    move/from16 v1, v20

    :goto_200
    :try_start_200
    monitor-exit v22
    :try_end_201
    .catchall {:try_start_200 .. :try_end_201} :catchall_219

    if-nez v9, :cond_218

    nop

    :goto_204
    move/from16 v0, v21

    if-ge v0, v1, :cond_218

    iget-object v2, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    aget-object v3, v14, v0

    aget-boolean v4, v17, v0

    aget-object v5, v15, v0

    aget v6, v16, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcastEMPkgHndlr(Ljava/lang/String;ZLjava/util/ArrayList;I)V

    add-int/lit8 v21, v0, 0x1

    goto :goto_204

    :cond_218
    return-void

    :catchall_219
    move-exception v0

    move/from16 v20, v1

    goto :goto_220

    :catchall_21d
    move-exception v0

    :goto_21e
    move-object/from16 v22, v7

    :goto_220
    :try_start_220
    monitor-exit v22
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_222

    throw v0

    :catchall_222
    move-exception v0

    goto :goto_220

    :cond_224
    :goto_224
    const-string v2, "EMPkgHandler"

    const-string v3, "list of PackageName is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
