.class Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSdkMonitor"
.end annotation


# instance fields
.field private mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

.field private mChargerConnectionSoundEnabledState:Z

.field private mHideNotificationMessages:I

.field private mIsCustomSdkStatusBarHidden:Z

.field private mKnoxCustomDoubleTapState:Z

.field private mKnoxCustomLockScreenHiddenItems:I

.field private mKnoxCustomLockScreenOverrideMode:I

.field private mKnoxCustomQuickPanelButtonUsers:Z

.field private mKnoxCustomQuickPanelButtons:I

.field private mKnoxCustomQuickPanelEditMode:I

.field private mKnoxCustomUnlockSimOnBootState:Z

.field private mQuickPanelItems:Ljava/lang/String;

.field private mStatusBarIconsState:Z

.field private mStatusBarMode:I

.field private mStatusBarNotificationsState:Z

.field private mStatusBarText:Ljava/lang/String;

.field private mStatusBarTextSize:I

.field private mStatusBarTextStyle:I

.field private mStatusBarTextWidth:I

.field private mUnlockSimPin:Ljava/lang/String;

.field private mVolumePanelEnabledState:Z

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->registerCallback()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return v0
.end method

.method private registerCallback()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v1, "KnoxStateMonitor"

    const-string/jumbo v2, "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerSystemUICallback() Failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object v0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SecureFolder"

    const-string v3, "Aod"

    const-string v4, "Sync"

    const-string v5, "Dnd"

    const-string v6, "DND"

    const-string v7, "AllShareCastOld"

    const-string v8, "AllShareCast"

    const-string v9, "DailyBoard"

    const-string v10, "UDS"

    const-string v11, "Dolby"

    const-string v12, "DeviceVisibility"

    const-string v13, "BikeMode"

    const-string v14, "bikemode"

    const-string v15, "PowerPlanning"

    const-string v16, "PersonalMode"

    const-string v17, "KidsHome"

    const-string v18, "EdgeLighting"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBarTextSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return v0
.end method

.method public getStatusBarTextStyle()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return v0
.end method

.method public getStatusBarTextWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return v0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object v0
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCarrierTextEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLockscreenAllDisabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/16 v1, 0x3ff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isLockscreenDateEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSetToSwipeLock()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return v0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return v0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return v0
.end method

.method public isUsersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return v0
.end method

.method public isVolumePanelEnabledState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return v0
.end method

.method public setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setChargerConnectionSoundEnabledState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    :cond_0
    return-void
.end method

.method public setHideNotificationMessages(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    :cond_0
    return-void
.end method

.method public setLockScreenHiddenItems(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1392

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setLockScreenOverrideMode(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1393

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelButtonUsers(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelButtons(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1394

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelEditMode(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1395

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelItems(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1396

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setStatusBarIconsState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1399

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setStatusBarNotificationsState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    :cond_0
    return-void
.end method

.method public setStatusBarTextInfo(Ljava/lang/String;III)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    if-eq v0, p4, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    iput p3, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    iput p4, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1397

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public setUnlockSimOnBootState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    :cond_0
    return-void
.end method

.method public setUnlockSimPin(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setVolumePanelEnabledState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    :cond_0
    return-void
.end method
