.class Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;
.super Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmMonitor"
.end annotation


# instance fields
.field private mAirplaneModeAllowed:Z

.field private mBluetoothAllowed:Z

.field private mCellularDataAllowed:Z

.field private mGPSStateChangeAllowed:Z

.field private mIsCameraDisabledByMdm:Z

.field private mIsDeviceDisableForMaxFailedAttempt:Z

.field private mIsFaceRecognitionAllowedEvenCameraBlocked:Z

.field private mIsLockscreenInvisibleOverlayConfigured:Z

.field private mIsLockscreenWallpaperConfigured:Z

.field private mIsMDMKioskMode:Z

.field private mIsNavigationBarHidden:Z

.field private mIsStatusBarHidden:Z

.field private mLocationProviderAllowed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLockDelay:I

.field private mLockedIccIdList:[Ljava/lang/String;

.field private mMaxNumFailedAttemptForDisable:I

.field private mMultiFactorAuthEnabled:Z

.field private mNFCAllowed:Z

.field private mNFCStateChangeAllowed:Z

.field private mPasswordVisibilityEnabled:Z

.field private mPwdChangeRequest:I

.field private mSettingsChangesAllowed:Z

.field private mStatusBarExpandAllowed:Z

.field private mWifiAllowed:Z

.field private mWifiStateChangeAllowed:Z

.field private mWifiTetheringAllowed:Z

.field private mWipeExcludeExternalStorage:Z

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsCameraDisabledByMdm:Z

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->registerCallback()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsCameraDisabledByMdm:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return v0
.end method

.method private getCurrentFailedAttempts()I
    .locals 9

    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v8, "getCurrentFailedPasswordAttempts"

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    :goto_1
    return v0
.end method

.method private isMDMEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerCallback()V
    .locals 4

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v1, "KnoxStateMonitor"

    const-string/jumbo v2, "registerKnoxCallback() cannot reference because edm is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerKnoxCallback() Failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public excludeExternalStorageForFailedPasswordsWipe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    return-void
.end method

.method public getLockDelay()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return v0
.end method

.method public getPwdChangeRequest()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return v0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBlockedEdmSettingsChange(Landroid/content/Context;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBrightnessBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isCameraDisabledByMdm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsCameraDisabledByMdm:Z

    return v0
.end method

.method public isCellularDataAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return v0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method public isDndTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isFaceRecognitionAllowedEvenCameraBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return v0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLocationProviderAllowed(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLocationTileBlocked()Z
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "gps"

    invoke-virtual {p0, v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "network"

    invoke-virtual {p0, v4}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v3

    iget-boolean v5, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    iget-object v6, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v6}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v2, :cond_1

    if-nez v6, :cond_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v3

    :goto_1
    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v7

    :goto_2
    if-eqz v8, :cond_3

    if-nez v4, :cond_4

    :cond_3
    if-nez v1, :cond_4

    if-nez v5, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v3, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return v0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMultiUserSwitchBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isMultifactorAuthEnforced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return v0
.end method

.method public isNavigationBarHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    return v0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return v0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "isPasswordVisibilityEnabled "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    return v0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return v0
.end method

.method public isSubIdLockedByAdmin()Z
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const/4 v5, 0x1

    if-nez v4, :cond_1

    return v5

    :cond_1
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length v7, v6

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    return v5

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public isVoLteTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWifiTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAirplaneModeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    return-void
.end method

.method public setApplicationNameControlEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setBluetoothAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    return-void
.end method

.method public setCameraAllowed(Z)V
    .locals 3

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraAllowed( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsCameraDisabledByMdm:Z

    return-void
.end method

.method public setCellularDataAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return-void
.end method

.method public setFaceRecognitionEvenCameraBlockedAllowed(Z)V
    .locals 3

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFaceRecognitionEvenCameraBlockedAllowed( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return-void
.end method

.method public setGPSStateChangeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    return-void
.end method

.method public setKioskModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return-void
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLockedIccIds([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    return-void
.end method

.method public setLockscreenInvisibleOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return-void
.end method

.method public setLockscreenWallpaper(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    return-void
.end method

.method public setMultifactorAuthEnabled(Z)V
    .locals 3

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultifactorAuthEnabled( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return-void
.end method

.method public setNFCAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    return-void
.end method

.method public setNFCStateChangeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    return-void
.end method

.method public setNavigationBarHidden(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setPasswordLockDelay(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return-void
.end method

.method public setPasswordVisibilityEnabled(Z)V
    .locals 3

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordVisibilityEnabled( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    return-void
.end method

.method public setPwdChangeRequested(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return-void
.end method

.method public setSettingsChangeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    return-void
.end method

.method public setStatusBarExpansionAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setWifiAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    return-void
.end method

.method public setWifiStateChangeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    return-void
.end method

.method public setWifiTetheringAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    const-string v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFailedUnlockAttempt : maxNumFailedAttemptForDisable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , curNumFailedAttempts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceDisabledForMaxFailedAttempt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x139e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    goto :goto_1

    :cond_2
    const-string v0, "KnoxStateMonitor"

    const-string v1, "MDM is not enabled..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
