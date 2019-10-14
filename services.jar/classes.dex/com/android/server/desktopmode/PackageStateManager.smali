.class Lcom/android/server/desktopmode/PackageStateManager;
.super Ljava/lang/Object;
.source "PackageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/PackageStateManager$StateListener;,
        Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mLock:Ljava/lang/Object;

.field private mPackageState:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/PackageStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/os/Handler;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    new-instance v1, Lcom/android/server/desktopmode/PackageStateManager$StateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/PackageStateManager$StateListener;-><init>(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/PackageStateManager$1;)V

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_30
    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    const-string v3, "com.sec.android.app.desktoplauncher"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    const-string v3, "com.sec.android.desktopmode.uiservice"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_59

    new-instance v0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/PackageStateManager$1;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void

    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/PackageStateManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/PackageStateManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/PackageStateManager;->setComponent(Ljava/lang/String;Z)V

    return-void
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isEmergencyModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    :try_start_18
    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/server/desktopmode/PackageStateManager;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/server/desktopmode/PackageStateManager;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    return v1

    :cond_39
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_3b} :catch_3d

    return v3

    :cond_3c
    goto :goto_55

    :catch_3d
    move-exception v2

    sget-object v3, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPackageAvailable failed: unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return v1
.end method

.method private setComponent(Ljava/lang/String;Z)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComponent(component= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.desktopmode.uiservice"

    invoke-static {v1, p1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p2, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    const/4 v3, 0x2

    :goto_38
    iget-object v4, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v4}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v4

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_45} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_45} :catch_46

    goto :goto_52

    :catch_46
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    sget-object v1, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setComponent"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method

.method private setComponentFromList(Lcom/android/server/desktopmode/State;II)V
    .registers 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_11
    if-ge v6, v4, :cond_84

    aget-object v7, v3, v6

    const/16 v0, 0x2f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_22

    move-object v0, v7

    const/4 v9, 0x0

    :goto_20
    move-object v15, v0

    goto :goto_2d

    :cond_22
    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_20

    :goto_2d
    :try_start_2d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v10

    invoke-interface {v0, v15, v10}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_39} :catch_75

    if-nez v0, :cond_3f

    nop

    move/from16 v13, p3

    goto :goto_80

    :cond_3f
    if-nez v9, :cond_5b

    :try_start_41
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const/4 v13, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v14
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_56

    const/4 v0, 0x0

    move-object v11, v15

    move/from16 v12, p3

    move-object v5, v15

    move-object v15, v0

    :try_start_50
    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    move/from16 v13, p3

    goto :goto_6e

    :catch_56
    move-exception v0

    move-object v5, v15

    move/from16 v13, p3

    goto :goto_79

    :cond_5b
    move-object v5, v15

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {v5, v9}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v11
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_68} :catch_71

    const/4 v12, 0x1

    move/from16 v13, p3

    :try_start_6b
    invoke-interface {v0, v10, v13, v12, v11}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_6f

    :goto_6e
    goto :goto_80

    :catch_6f
    move-exception v0

    goto :goto_79

    :catch_71
    move-exception v0

    move/from16 v13, p3

    goto :goto_79

    :catch_75
    move-exception v0

    move/from16 v13, p3

    move-object v5, v15

    :goto_79
    sget-object v10, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    const-string v11, "Failed to enable/disable components"

    invoke-static {v10, v11, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_80
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_11

    :cond_84
    move/from16 v13, p3

    return-void
.end method

.method private setSettingsComponent(Lcom/android/server/desktopmode/State;)V
    .registers 9

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_13

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_11

    goto :goto_13

    :cond_11
    move v1, v3

    goto :goto_14

    :cond_13
    :goto_13
    move v1, v2

    :goto_14
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_3f

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v4

    const/16 v6, 0x65

    if-ne v4, v6, :cond_2c

    const v4, 0x1070038

    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    move v5, v3

    :goto_28
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/desktopmode/PackageStateManager;->setComponentFromList(Lcom/android/server/desktopmode/State;II)V

    goto :goto_49

    :cond_2c
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v4

    const/16 v6, 0x66

    if-ne v4, v6, :cond_49

    const v4, 0x1070037

    if-eqz v1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v5, v3

    :goto_3b
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/desktopmode/PackageStateManager;->setComponentFromList(Lcom/android/server/desktopmode/State;II)V

    goto :goto_49

    :cond_3f
    const v4, 0x1070036

    if-eqz v1, :cond_45

    goto :goto_46

    :cond_45
    move v5, v3

    :goto_46
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/desktopmode/PackageStateManager;->setComponentFromList(Lcom/android/server/desktopmode/State;II)V

    :cond_49
    :goto_49
    const v4, 0x1070034

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v5, :cond_52

    :goto_50
    move v5, v2

    goto :goto_56

    :cond_52
    if-eqz v1, :cond_55

    goto :goto_50

    :cond_55
    move v5, v3

    :goto_56
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/desktopmode/PackageStateManager;->setComponentFromList(Lcom/android/server/desktopmode/State;II)V

    const v4, 0x1070035

    if-eqz v1, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v3

    :goto_60
    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/desktopmode/PackageStateManager;->setComponentFromList(Lcom/android/server/desktopmode/State;II)V

    return-void
.end method

.method private updatePackageState()V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v2, 0x1

    :cond_22
    goto :goto_f

    :cond_23
    if-eqz v2, :cond_2f

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-object v0, v3

    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_38

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v0}, Lcom/android/server/desktopmode/IStateManager;->setPackageState(Ljava/util/Map;)V

    :cond_37
    return-void

    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method private updatePackageState(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_44

    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_41

    sget-object v2, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePackageState(), packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", available="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_44
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/PackageStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_25
    const-string/jumbo v1, "mPackageState"

    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_35

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method
