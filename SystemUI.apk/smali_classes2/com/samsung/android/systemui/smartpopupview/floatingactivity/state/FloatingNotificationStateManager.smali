.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;
.super Ljava/lang/Object;
.source "FloatingNotificationStateManager.java"


# static fields
.field private static sInstance:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;


# instance fields
.field private final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String;

.field private mActivateOnlyWhenUsingApps:Z

.field private mContext:Landroid/content/Context;

.field private mEnabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingNotiEnableState:Z

.field private mFloatingNotiVisibleState:Z

.field private mHeadUpNotificaitonDisableState:Z

.field private mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

.field private mNotificationServiceConnected:Z

.field private mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

.field private mVisibleStateChangeListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/VisibleStateChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ":"

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->ENABLED_SERVICES_SEPARATOR:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->loadFloatingNotificationState()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->setActivateOnlyWhenAppUsingState()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->loadHeadUpNotificationEnableState()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->loadingEnabledPackageList()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mFloatingNotiVisibleState:Z

    return-void
.end method

.method private enabledPackageListString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->sInstance:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->sInstance:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->sInstance:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    return-object v0
.end method

.method public static synthetic lambda$writeEnabledListToFloatingNotiVisible$0(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->enabledPackageListString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->writeCurrentEnabledListToSetting(Ljava/lang/String;)V

    return-void
.end method

.method private loadingEnabledPackageList()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->getPackageListFromSharedPreferences()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v2, "FloatingNotificationStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageListFromPreference : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setActivateOnlyWhenAppUsingState()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_FULLSCREEN_LAUNCHING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->getActivateOnlyWhenAppUsingState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mActivateOnlyWhenUsingApps:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FloatingNotificationStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivateOnlyWhenAppUsingState mActivateOnlyWhenUsingApps : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mActivateOnlyWhenUsingApps:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mActivateOnlyWhenUsingApps:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public activateWhenUsingAppsOlnyMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mActivateOnlyWhenUsingApps:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->saveFloatingNotificationModeToSharedPreferences(Z)V

    return-void
.end method

.method public addPackageToEnabledList(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FloatingNotificationStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPackageToEnabledList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->enabledPackageListString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->writeCurrentEnabledListListToSharedPreferences(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ALWAYS_DISABLE_HUN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mHeadUpNotificaitonDisableState:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->enabledPackageListString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->writeCurrentEnabledListToSetting(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public clearPackageDataWhenFreeformNotSuppored()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->clearPackageListDataAtDB()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->clearPackageListDataAtSharedPreference()V

    return-void
.end method

.method public enableEdgeLighting()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->enableEdgeLighting()V

    return-void
.end method

.method public getEnabledList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hideFloatingNotification()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isActivateOnlyWhenUsingAppsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FloatingNotificationStateManager"

    const-string v2, "hideFloatingNotification"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->clearPackageListDataAtDB()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mFloatingNotiVisibleState:Z

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mVisibleStateChangeListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/VisibleStateChangeListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/VisibleStateChangeListener;->onStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public isActivateOnlyWhenUsingAppsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mActivateOnlyWhenUsingApps:Z

    return v0
.end method

.method public isFloatingNotificatonVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mFloatingNotiVisibleState:Z

    return v0
.end method

.method public isFloationgNotificationEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isFreeformSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.freeform_window_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeadUpNotificationDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mHeadUpNotificaitonDisableState:Z

    return v0
.end method

.method public isPackageEnabled(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FloatingNotificationStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FloatingNotificationStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package disabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadFloatingNotificationState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mFloatingNotiEnableState:Z

    return-void
.end method

.method public loadHeadUpNotificationEnableState()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ALWAYS_DISABLE_HUN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mHeadUpNotificaitonDisableState:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->getHeadUpNotificationDisableState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mHeadUpNotificaitonDisableState:Z

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mHeadUpNotificaitonDisableState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->hasPackageList()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->clearPackageListDataAtDB()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removePackageFromEnabledList(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FloatingNotificationStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePackageFromEnabledList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->enabledPackageListString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->writeCurrentEnabledListListToSharedPreferences(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ALWAYS_DISABLE_HUN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mHeadUpNotificaitonDisableState:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->enabledPackageListString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->writeCurrentEnabledListToSetting(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeStateManager()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FloatingNotificationStateManager"

    const-string v2, "removeStateManager"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mVisibleStateChangeListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/VisibleStateChangeListener;

    sput-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->sInstance:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    return-void
.end method

.method public setHeadUpNotificationState(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mHeadUpNotificaitonDisableState:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->saveHunEnableToSharedPreferences(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->enabledPackageListString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->writeCurrentEnabledListToSetting(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mSettingsUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->clearPackageListDataAtDB()V

    :goto_0
    return-void
.end method

.method public setNotificationServiceConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mNotificationServiceConnected:Z

    return-void
.end method

.method public setVisibleStateChangeListener(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/VisibleStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mVisibleStateChangeListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/VisibleStateChangeListener;

    return-void
.end method

.method public showFlatingNotification()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isActivateOnlyWhenUsingAppsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FloatingNotificationStateManager"

    const-string v2, "showFlatingNotification"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->writeEnabledListToFloatingNotiVisible()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mFloatingNotiVisibleState:Z

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->mVisibleStateChangeListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/VisibleStateChangeListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/VisibleStateChangeListener;->onStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public writeEnabledListToFloatingNotiVisible()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/-$$Lambda$FloatingNotificationStateManager$1UPErGA1sTlxiMTb3vPoH-h2a9M;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/-$$Lambda$FloatingNotificationStateManager$1UPErGA1sTlxiMTb3vPoH-h2a9M;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
