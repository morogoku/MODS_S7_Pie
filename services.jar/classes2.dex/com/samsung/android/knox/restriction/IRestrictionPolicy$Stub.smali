.class public abstract Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "IRestrictionPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.restriction.IRestrictionPolicy"

.field static final TRANSACTION_addNewAdminActivationAppWhiteList:I = 0x7e

.field static final TRANSACTION_allowActivationLock:I = 0x9b

.field static final TRANSACTION_allowAirplaneMode:I = 0x68

.field static final TRANSACTION_allowAndroidBeam:I = 0x54

.field static final TRANSACTION_allowAudioRecord:I = 0x3e

.field static final TRANSACTION_allowBackgroundProcessLimit:I = 0x46

.field static final TRANSACTION_allowClipboardShare:I = 0x4c

.field static final TRANSACTION_allowDataSaving:I = 0x8e

.field static final TRANSACTION_allowDeveloperMode:I = 0x66

.field static final TRANSACTION_allowFaceRecognitionEvenCameraBlocked:I = 0x95

.field static final TRANSACTION_allowFactoryReset:I = 0x22

.field static final TRANSACTION_allowFastEncryption:I = 0x73

.field static final TRANSACTION_allowFirmwareAutoUpdate:I = 0x6d

.field static final TRANSACTION_allowFirmwareRecovery:I = 0x63

.field static final TRANSACTION_allowGoogleAccountsAutoSync:I = 0x6a

.field static final TRANSACTION_allowGoogleCrashReport:I = 0x35

.field static final TRANSACTION_allowKillingActivitiesOnLeave:I = 0x48

.field static final TRANSACTION_allowLocalContactStorage:I = 0x97

.field static final TRANSACTION_allowLockScreenView:I = 0x5f

.field static final TRANSACTION_allowOTAUpgrade:I = 0x31

.field static final TRANSACTION_allowPowerOff:I = 0x3c

.field static final TRANSACTION_allowPowerSavingMode:I = 0x90

.field static final TRANSACTION_allowSBeam:I = 0x52

.field static final TRANSACTION_allowSDCardMove:I = 0x71

.field static final TRANSACTION_allowSDCardWrite:I = 0x33

.field static final TRANSACTION_allowSVoice:I = 0x4f

.field static final TRANSACTION_allowSafeMode:I = 0x5d

.field static final TRANSACTION_allowScreenPinning:I = 0x86

.field static final TRANSACTION_allowSettingsChanges:I = 0x2a

.field static final TRANSACTION_allowShareList:I = 0x58

.field static final TRANSACTION_allowSmartClipMode:I = 0x82

.field static final TRANSACTION_allowStatusBarExpansion:I = 0x3a

.field static final TRANSACTION_allowStopSystemApp:I = 0x42

.field static final TRANSACTION_allowUsbHostStorage:I = 0x56

.field static final TRANSACTION_allowUserMobileDataLimit:I = 0x4a

.field static final TRANSACTION_allowVideoRecord:I = 0x40

.field static final TRANSACTION_allowVpn:I = 0x2f

.field static final TRANSACTION_allowWallpaperChange:I = 0x38

.field static final TRANSACTION_allowWifiDirect:I = 0x44

.field static final TRANSACTION_clearNewAdminActivationAppWhiteList:I = 0x7d

.field static final TRANSACTION_enableODETrustedBootVerification:I = 0x77

.field static final TRANSACTION_enableWearablePolicy:I = 0x87

.field static final TRANSACTION_getAllowedFOTAInfo:I = 0x8b

.field static final TRANSACTION_getAllowedFOTAVersion:I = 0x8a

.field static final TRANSACTION_getCCModeState:I = 0x84

.field static final TRANSACTION_getNewAdminActivationAppWhiteList:I = 0x7f

.field static final TRANSACTION_getUsbExceptionList:I = 0x93

.field static final TRANSACTION_isActivationLockAllowed:I = 0x9c

.field static final TRANSACTION_isAirplaneModeAllowed:I = 0x69

.field static final TRANSACTION_isAndroidBeamAllowed:I = 0x55

.field static final TRANSACTION_isAudioRecordAllowed:I = 0x3f

.field static final TRANSACTION_isBackgroundDataEnabled:I = 0x27

.field static final TRANSACTION_isBackgroundProcessLimitAllowed:I = 0x47

.field static final TRANSACTION_isBackupAllowed:I = 0x1e

.field static final TRANSACTION_isBluetoothTetheringEnabled:I = 0xc

.field static final TRANSACTION_isCCModeEnabled:I = 0xa4

.field static final TRANSACTION_isCCModeSupported:I = 0x76

.field static final TRANSACTION_isCameraEnabled:I = 0x2

.field static final TRANSACTION_isCellularDataAllowed:I = 0x29

.field static final TRANSACTION_isClipboardAllowed:I = 0x20

.field static final TRANSACTION_isClipboardAllowedAsUser:I = 0x21

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x4d

.field static final TRANSACTION_isClipboardShareAllowedAsUser:I = 0x4e

.field static final TRANSACTION_isDataSavingAllowed:I = 0x8f

.field static final TRANSACTION_isDeveloperModeAllowed:I = 0x67

.field static final TRANSACTION_isFaceRecognitionAllowedEvenCameraBlocked:I = 0x96

.field static final TRANSACTION_isFactoryResetAllowed:I = 0x23

.field static final TRANSACTION_isFastEncryptionAllowed:I = 0x74

.field static final TRANSACTION_isFirmwareAutoUpdateAllowed:I = 0x6e

.field static final TRANSACTION_isFirmwareRecoveryAllowed:I = 0x64

.field static final TRANSACTION_isGoogleAccountsAutoSyncAllowed:I = 0x6b

.field static final TRANSACTION_isGoogleAccountsAutoSyncAllowedAsUser:I = 0x6c

.field static final TRANSACTION_isGoogleCrashReportAllowed:I = 0x36

.field static final TRANSACTION_isGoogleCrashReportAllowedAsUser:I = 0x37

.field static final TRANSACTION_isHeadphoneEnabled:I = 0x70

.field static final TRANSACTION_isHomeKeyEnabled:I = 0x25

.field static final TRANSACTION_isIrisCameraEnabled:I = 0x8c

.field static final TRANSACTION_isKillingActivitiesOnLeaveAllowed:I = 0x49

.field static final TRANSACTION_isKnoxDelegationEnabled:I = 0x9a

.field static final TRANSACTION_isLocalContactStorageAllowed:I = 0x98

.field static final TRANSACTION_isLockScreenEnabled:I = 0x62

.field static final TRANSACTION_isLockScreenViewAllowed:I = 0x60

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x4

.field static final TRANSACTION_isMicrophoneEnabledAsUser:I = 0x5

.field static final TRANSACTION_isMockLocationEnabled:I = 0x1c

.field static final TRANSACTION_isNFCEnabled:I = 0x7

.field static final TRANSACTION_isNFCEnabledWithMsg:I = 0x8

.field static final TRANSACTION_isNewAdminActivationEnabled:I = 0x7c

.field static final TRANSACTION_isNewAdminInstallationEnabled:I = 0x7a

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x2e

.field static final TRANSACTION_isNonTrustedAppInstallBlocked:I = 0x9d

.field static final TRANSACTION_isNonTrustedAppInstallBlockedAsUser:I = 0x9e

.field static final TRANSACTION_isODETrustedBootVerificationEnabled:I = 0x78

.field static final TRANSACTION_isOTAUpgradeAllowed:I = 0x32

.field static final TRANSACTION_isPowerOffAllowed:I = 0x3d

.field static final TRANSACTION_isPowerSavingModeAllowed:I = 0x91

.field static final TRANSACTION_isSBeamAllowed:I = 0x53

.field static final TRANSACTION_isSDCardMoveAllowed:I = 0x72

.field static final TRANSACTION_isSDCardWriteAllowed:I = 0x34

.field static final TRANSACTION_isSVoiceAllowed:I = 0x50

.field static final TRANSACTION_isSVoiceAllowedAsUser:I = 0x51

.field static final TRANSACTION_isSafeModeAllowed:I = 0x5e

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x18

.field static final TRANSACTION_isScreenCaptureEnabledEx:I = 0x19

.field static final TRANSACTION_isScreenCaptureEnabledInternal:I = 0x1a

.field static final TRANSACTION_isScreenPinningAllowed:I = 0x85

.field static final TRANSACTION_isSdCardEnabled:I = 0xa

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x2b

.field static final TRANSACTION_isSettingsChangesAllowedAsUser:I = 0x2c

.field static final TRANSACTION_isShareListAllowed:I = 0x59

.field static final TRANSACTION_isShareListAllowedAsUser:I = 0x5a

.field static final TRANSACTION_isSmartClipModeAllowed:I = 0x80

.field static final TRANSACTION_isSmartClipModeAllowedInternal:I = 0x81

.field static final TRANSACTION_isStatusBarExpansionAllowed:I = 0x3b

.field static final TRANSACTION_isStatusBarExpansionAllowedAsUser:I = 0x65

.field static final TRANSACTION_isStopSystemAppAllowed:I = 0x43

.field static final TRANSACTION_isTetheringEnabled:I = 0x12

.field static final TRANSACTION_isUsbDebuggingEnabled:I = 0x14

.field static final TRANSACTION_isUsbHostStorageAllowed:I = 0x57

.field static final TRANSACTION_isUsbKiesAvailable:I = 0xa0

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x9f

.field static final TRANSACTION_isUsbMediaPlayerAvailable:I = 0x16

.field static final TRANSACTION_isUsbTetheringEnabled:I = 0xe

.field static final TRANSACTION_isUseSecureKeypadEnabled:I = 0x5c

.field static final TRANSACTION_isUserMobileDataLimitAllowed:I = 0x4b

.field static final TRANSACTION_isVideoRecordAllowed:I = 0x41

.field static final TRANSACTION_isVpnAllowed:I = 0x30

.field static final TRANSACTION_isWallpaperChangeAllowed:I = 0x39

.field static final TRANSACTION_isWearablePolicyEnabled:I = 0x88

.field static final TRANSACTION_isWifiDirectAllowed:I = 0x45

.field static final TRANSACTION_isWifiTetheringEnabled:I = 0x10

.field static final TRANSACTION_onUserMigrated:I = 0x83

.field static final TRANSACTION_preventNewAdminActivation:I = 0x7b

.field static final TRANSACTION_preventNewAdminInstallation:I = 0x79

.field static final TRANSACTION_setAllowNonMarketApps:I = 0x2d

.field static final TRANSACTION_setAllowedFOTAVersion:I = 0x89

.field static final TRANSACTION_setBackgroundData:I = 0x26

.field static final TRANSACTION_setBackup:I = 0x1d

.field static final TRANSACTION_setBluetoothTethering:I = 0xb

.field static final TRANSACTION_setCCMode:I = 0x75

.field static final TRANSACTION_setCamera:I = 0x1

.field static final TRANSACTION_setCellularData:I = 0x28

.field static final TRANSACTION_setClipboardEnabled:I = 0x1f

.field static final TRANSACTION_setEnableNFC:I = 0x6

.field static final TRANSACTION_setHeadphoneState:I = 0x6f

.field static final TRANSACTION_setHomeKeyState:I = 0x24

.field static final TRANSACTION_setIrisCameraState:I = 0x8d

.field static final TRANSACTION_setKnoxDelegationEnabled:I = 0x99

.field static final TRANSACTION_setLockScreenState:I = 0x61

.field static final TRANSACTION_setMicrophoneState:I = 0x3

.field static final TRANSACTION_setMockLocation:I = 0x1b

.field static final TRANSACTION_setNonTrustedAppInstallBlock:I = 0xa1

.field static final TRANSACTION_setScreenCapture:I = 0x17

.field static final TRANSACTION_setSdCardState:I = 0x9

.field static final TRANSACTION_setTethering:I = 0x11

.field static final TRANSACTION_setUsbDebuggingEnabled:I = 0x13

.field static final TRANSACTION_setUsbExceptionList:I = 0x92

.field static final TRANSACTION_setUsbKiesAvailability:I = 0xa2

.field static final TRANSACTION_setUsbMassStorage:I = 0xa3

.field static final TRANSACTION_setUsbMediaPlayerAvailability:I = 0x15

.field static final TRANSACTION_setUsbTethering:I = 0xd

.field static final TRANSACTION_setUseSecureKeypad:I = 0x5b

.field static final TRANSACTION_setWifiTethering:I = 0xf

.field static final TRANSACTION_systemReady:I = 0x94


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object v1

    :cond_14
    new-instance v1, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_164a

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_164e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_25

    :cond_24
    nop

    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    move v1, v2

    nop

    :cond_2d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4b

    :cond_4a
    nop

    :goto_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_53

    move v1, v2

    nop

    :cond_53
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setUsbMassStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_70

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_71

    :cond_70
    nop

    :goto_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_79

    move v1, v2

    nop

    :cond_79
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setUsbKiesAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_96

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_97

    :cond_96
    nop

    :goto_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9f

    move v1, v2

    nop

    :cond_9f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setNonTrustedAppInstallBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bc

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_bd

    :cond_bc
    nop

    :goto_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c5

    move v1, v2

    nop

    :cond_c5
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isUsbKiesAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e2

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e3

    :cond_e2
    nop

    :goto_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_eb

    move v1, v2

    nop

    :cond_eb
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isNonTrustedAppInstallBlockedAsUser(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_11c

    :cond_11b
    nop

    :goto_11c
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_13b

    :cond_13a
    nop

    :goto_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_143

    move v1, v2

    nop

    :cond_143
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_14e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_160

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_161

    :cond_160
    nop

    :goto_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_169

    move v1, v2

    nop

    :cond_169
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowActivationLock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_174
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_187

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_188

    :cond_187
    nop

    :goto_188
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_194
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a6

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1a7

    :cond_1a6
    nop

    :goto_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1af

    move v1, v2

    nop

    :cond_1af
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1ba
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1cd

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1ce

    :cond_1cd
    nop

    :goto_1ce
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1da
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ec

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1ed

    :cond_1ec
    nop

    :goto_1ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f5

    move v1, v2

    nop

    :cond_1f5
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowLocalContactStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_200
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_213

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_214

    :cond_213
    nop

    :goto_214
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_220
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_232

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_233

    :cond_232
    nop

    :goto_233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23b

    move v1, v2

    nop

    :cond_23b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowFaceRecognitionEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_246
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->systemReady(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_254
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getUsbExceptionList()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_262
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_275

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_276

    :cond_275
    nop

    :goto_276
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setUsbExceptionList(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_286
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_299

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_29a

    :cond_299
    nop

    :goto_29a
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b8

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2b9

    :cond_2b8
    nop

    :goto_2b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c1

    move v1, v2

    nop

    :cond_2c1
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowPowerSavingMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2cc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isDataSavingAllowed()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2da
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2ec

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2ed

    :cond_2ec
    nop

    :goto_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f5

    move v1, v2

    nop

    :cond_2f5
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowDataSaving(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_300
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_312

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_313

    :cond_312
    nop

    :goto_313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31b

    move v1, v2

    nop

    :cond_31b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setIrisCameraState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_326
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_338

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_339

    :cond_338
    nop

    :goto_339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_341

    move v1, v2

    nop

    :cond_341
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_34c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_360

    :cond_35f
    nop

    :goto_360
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_36c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_37f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_380

    :cond_37f
    nop

    :goto_380
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_38c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39e

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_39f

    :cond_39e
    move-object v4, v3

    :goto_39f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_3b3

    :cond_3b2
    nop

    :goto_3b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3bb

    move v1, v2

    nop

    :cond_3bb
    invoke-virtual {p0, v4, v5, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3c6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3d9

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3da

    :cond_3d9
    nop

    :goto_3da
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3ea
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3fc

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3fd

    :cond_3fc
    nop

    :goto_3fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_409

    move v1, v2

    nop

    :cond_409
    invoke-virtual {p0, v3, v4, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->enableWearablePolicy(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_414
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_426

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_427

    :cond_426
    nop

    :goto_427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42f

    move v1, v2

    nop

    :cond_42f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowScreenPinning(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_43a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_44d

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_44e

    :cond_44d
    nop

    :goto_44e
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_45a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46d

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_46e

    :cond_46d
    nop

    :goto_46e
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_47a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->onUserMigrated(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_488
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_49a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_49b

    :cond_49a
    nop

    :goto_49b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a3

    move v1, v2

    nop

    :cond_4a3
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4ae
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4b9

    move v1, v2

    nop

    :cond_4b9
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSmartClipModeAllowedInternal(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4d7

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4d8

    :cond_4d7
    nop

    :goto_4d8
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSmartClipModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4e4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f7

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4f8

    :cond_4f7
    nop

    :goto_4f8
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_504
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_517

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_518

    :cond_517
    nop

    :goto_518
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_528
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_53b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_53c

    :cond_53b
    nop

    :goto_53c
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->clearNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_548
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_55b

    :cond_55a
    nop

    :goto_55b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_563

    move v1, v2

    nop

    :cond_563
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_56e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_580

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_581

    :cond_580
    nop

    :goto_581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_589

    move v1, v2

    nop

    :cond_589
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->preventNewAdminActivation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_594
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a6

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5a7

    :cond_5a6
    nop

    :goto_5a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5af

    move v1, v2

    nop

    :cond_5af
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5ba
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5cc

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5cd

    :cond_5cc
    nop

    :goto_5cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d5

    move v1, v2

    nop

    :cond_5d5
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->preventNewAdminInstallation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f3

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5f4

    :cond_5f3
    nop

    :goto_5f4
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_600
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_612

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_613

    :cond_612
    nop

    :goto_613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61b

    move v1, v2

    nop

    :cond_61b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->enableODETrustedBootVerification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_626
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_638

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_639

    :cond_638
    nop

    :goto_639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_641

    move v1, v2

    nop

    :cond_641
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_64c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65e

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_65f

    :cond_65e
    nop

    :goto_65f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_667

    move v1, v2

    nop

    :cond_667
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setCCMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_672
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_684

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_685

    :cond_684
    nop

    :goto_685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68d

    move v1, v2

    nop

    :cond_68d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_698
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6aa

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6ab

    :cond_6aa
    nop

    :goto_6ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b3

    move v1, v2

    nop

    :cond_6b3
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowFastEncryption(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_6be
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d0

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6d1

    :cond_6d0
    nop

    :goto_6d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d9

    move v1, v2

    nop

    :cond_6d9
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_6e4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6f6

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6f7

    :cond_6f6
    nop

    :goto_6f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6ff

    move v1, v2

    nop

    :cond_6ff
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowSDCardMove(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_70a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71c

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_71d

    :cond_71c
    nop

    :goto_71d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_725

    move v1, v2

    nop

    :cond_725
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_730
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_742

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_743

    :cond_742
    nop

    :goto_743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_74b

    move v1, v2

    nop

    :cond_74b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setHeadphoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_756
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_768

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_769

    :cond_768
    nop

    :goto_769
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_771

    move v1, v2

    nop

    :cond_771
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_77c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_78e

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_78f

    :cond_78e
    nop

    :goto_78f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_797

    move v1, v2

    nop

    :cond_797
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowFirmwareAutoUpdate(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7a2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7b4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7c7

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7c8

    :cond_7c7
    nop

    :goto_7c8
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7d4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7e6

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7e7

    :cond_7e6
    nop

    :goto_7e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7ef

    move v1, v2

    nop

    :cond_7ef
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowGoogleAccountsAutoSync(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7fa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_805

    move v1, v2

    nop

    :cond_805
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isAirplaneModeAllowed(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_810
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_822

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_823

    :cond_822
    nop

    :goto_823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_82b

    move v1, v2

    nop

    :cond_82b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowAirplaneMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_836
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_848

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_849

    :cond_848
    nop

    :goto_849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_851

    move v1, v2

    nop

    :cond_851
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_85c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_86e

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_86f

    :cond_86e
    nop

    :goto_86f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_877

    move v1, v2

    nop

    :cond_877
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowDeveloperMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_882
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_88d

    move v1, v2

    nop

    :cond_88d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_89c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8ae

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8af

    :cond_8ae
    nop

    :goto_8af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8b7

    move v1, v2

    nop

    :cond_8b7
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8c2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8d4

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8d5

    :cond_8d4
    nop

    :goto_8d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8dd

    move v1, v2

    nop

    :cond_8dd
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowFirmwareRecovery(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8e8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8fa

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8fb

    :cond_8fa
    nop

    :goto_8fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_903

    move v1, v2

    nop

    :cond_903
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_90e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_920

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_921

    :cond_920
    nop

    :goto_921
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_929

    move v1, v2

    nop

    :cond_929
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setLockScreenState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_934
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_947

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_948

    :cond_947
    nop

    :goto_948
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_958
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_96a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_96b

    :cond_96a
    nop

    :goto_96b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_977

    move v1, v2

    nop

    :cond_977
    invoke-virtual {p0, v3, v4, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowLockScreenView(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_982
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_995

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_996

    :cond_995
    nop

    :goto_996
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9a2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9b4

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9b5

    :cond_9b4
    nop

    :goto_9b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9bd

    move v1, v2

    nop

    :cond_9bd
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowSafeMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9c8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9db

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9dc

    :cond_9db
    nop

    :goto_9dc
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9e8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9fa

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9fb

    :cond_9fa
    nop

    :goto_9fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a03

    move v1, v2

    nop

    :cond_a03
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a0e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a1d

    move v1, v2

    nop

    :cond_a1d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isShareListAllowedAsUser(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a3a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a3b

    :cond_a3a
    nop

    :goto_a3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a43

    move v1, v2

    nop

    :cond_a43
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a60

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a61

    :cond_a60
    nop

    :goto_a61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a69

    move v1, v2

    nop

    :cond_a69
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a86

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a87

    :cond_a86
    nop

    :goto_a87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a8f

    move v1, v2

    nop

    :cond_a8f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a9a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_aac

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_aad

    :cond_aac
    nop

    :goto_aad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ab5

    move v1, v2

    nop

    :cond_ab5
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowUsbHostStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_ac0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ad2

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_ad3

    :cond_ad2
    nop

    :goto_ad3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_adb

    move v1, v2

    nop

    :cond_adb
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_ae6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_af8

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_af9

    :cond_af8
    nop

    :goto_af9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b01

    move v1, v2

    nop

    :cond_b01
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowAndroidBeam(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b0c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b1e

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b1f

    :cond_b1e
    nop

    :goto_b1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b27

    move v1, v2

    nop

    :cond_b27
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b44

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b45

    :cond_b44
    nop

    :goto_b45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b4d

    move v1, v2

    nop

    :cond_b4d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowSBeam(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b63

    move v1, v2

    nop

    :cond_b63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSVoiceAllowedAsUser(ZI)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b84

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b85

    :cond_b84
    nop

    :goto_b85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b8d

    move v1, v2

    nop

    :cond_b8d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_baa

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_bab

    :cond_baa
    nop

    :goto_bab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bb3

    move v1, v2

    nop

    :cond_bb3
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowSVoice(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_bbe
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isClipboardShareAllowedAsUser(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_bd0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_be3

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_be4

    :cond_be3
    nop

    :goto_be4
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_bf0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c02

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c03

    :cond_c02
    nop

    :goto_c03
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c0b

    move v1, v2

    nop

    :cond_c0b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowClipboardShare(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c29

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c2a

    :cond_c29
    nop

    :goto_c2a
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c48

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c49

    :cond_c48
    nop

    :goto_c49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c51

    move v1, v2

    nop

    :cond_c51
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowUserMobileDataLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c6f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c70

    :cond_c6f
    nop

    :goto_c70
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c7c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c8e

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c8f

    :cond_c8e
    nop

    :goto_c8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c97

    move v1, v2

    nop

    :cond_c97
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowKillingActivitiesOnLeave(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_ca2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_cb5

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_cb6

    :cond_cb5
    nop

    :goto_cb6
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_cc2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cd4

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_cd5

    :cond_cd4
    nop

    :goto_cd5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cdd

    move v1, v2

    nop

    :cond_cdd
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowBackgroundProcessLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_ce8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cfa

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_cfb

    :cond_cfa
    nop

    :goto_cfb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d03

    move v1, v2

    nop

    :cond_d03
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d0e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d20

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d21

    :cond_d20
    nop

    :goto_d21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d29

    move v1, v2

    nop

    :cond_d29
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowWifiDirect(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d47

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d48

    :cond_d47
    nop

    :goto_d48
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d66

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d67

    :cond_d66
    nop

    :goto_d67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d6f

    move v1, v2

    nop

    :cond_d6f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowStopSystemApp(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d7a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d8c

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d8d

    :cond_d8c
    nop

    :goto_d8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d95

    move v1, v2

    nop

    :cond_d95
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_da0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_db2

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_db3

    :cond_db2
    nop

    :goto_db3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dbb

    move v1, v2

    nop

    :cond_dbb
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowVideoRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_dc6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dd8

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_dd9

    :cond_dd8
    nop

    :goto_dd9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_de1

    move v1, v2

    nop

    :cond_de1
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_dec
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dfe

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_dff

    :cond_dfe
    nop

    :goto_dff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e07

    move v1, v2

    nop

    :cond_e07
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowAudioRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_e12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e24

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e25

    :cond_e24
    nop

    :goto_e25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e2d

    move v1, v2

    nop

    :cond_e2d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_e38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e4a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e4b

    :cond_e4a
    nop

    :goto_e4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e53

    move v1, v2

    nop

    :cond_e53
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowPowerOff(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_e5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e70

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e71

    :cond_e70
    nop

    :goto_e71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e79

    move v1, v2

    nop

    :cond_e79
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isStatusBarExpansionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_e84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e96

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e97

    :cond_e96
    nop

    :goto_e97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e9f

    move v1, v2

    nop

    :cond_e9f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_eaa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ebc

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_ebd

    :cond_ebc
    nop

    :goto_ebd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ec5

    move v1, v2

    nop

    :cond_ec5
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_ed0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ee2

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_ee3

    :cond_ee2
    nop

    :goto_ee3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_eeb

    move v1, v2

    nop

    :cond_eeb
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowWallpaperChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_ef6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f08
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f1b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f1c

    :cond_f1b
    nop

    :goto_f1c
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f3a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f3b

    :cond_f3a
    nop

    :goto_f3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f43

    move v1, v2

    nop

    :cond_f43
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowGoogleCrashReport(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f61

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f62

    :cond_f61
    nop

    :goto_f62
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f6e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f80

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f81

    :cond_f80
    nop

    :goto_f81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f89

    move v1, v2

    nop

    :cond_f89
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowSDCardWrite(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fa7

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_fa8

    :cond_fa7
    nop

    :goto_fa8
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_fb4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fc6

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_fc7

    :cond_fc6
    nop

    :goto_fc7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fcf

    move v1, v2

    nop

    :cond_fcf
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowOTAUpgrade(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_fda
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fed

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_fee

    :cond_fed
    nop

    :goto_fee
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_ffa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_100c

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_100d

    :cond_100c
    nop

    :goto_100d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1015

    move v1, v2

    nop

    :cond_1015
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowVpn(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1020
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1033

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1034

    :cond_1033
    nop

    :goto_1034
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1040
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1052

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1053

    :cond_1052
    nop

    :goto_1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_105b

    move v1, v2

    nop

    :cond_105b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setAllowNonMarketApps(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1066
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1071

    move v1, v2

    nop

    :cond_1071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1080
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1092

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1093

    :cond_1092
    nop

    :goto_1093
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_109b

    move v1, v2

    nop

    :cond_109b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_10a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10b8

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10b9

    :cond_10b8
    nop

    :goto_10b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10c1

    move v1, v2

    nop

    :cond_10c1
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_10cc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10df

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10e0

    :cond_10df
    nop

    :goto_10e0
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_10ec
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10fe

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10ff

    :cond_10fe
    nop

    :goto_10ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1107

    move v1, v2

    nop

    :cond_1107
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1125

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1126

    :cond_1125
    nop

    :goto_1126
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1144

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1145

    :cond_1144
    nop

    :goto_1145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_114d

    move v1, v2

    nop

    :cond_114d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setBackgroundData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1158
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_116a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_116b

    :cond_116a
    nop

    :goto_116b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1173

    move v1, v2

    nop

    :cond_1173
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_117e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1190

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1191

    :cond_1190
    nop

    :goto_1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1199

    move v1, v2

    nop

    :cond_1199
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_11a4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11b7

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_11b8

    :cond_11b7
    nop

    :goto_11b8
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_11c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11d6

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_11d7

    :cond_11d6
    nop

    :goto_11d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11df

    move v1, v2

    nop

    :cond_11df
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->allowFactoryReset(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_11ea
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11f5

    move v1, v2

    nop

    :cond_11f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isClipboardAllowedAsUser(ZI)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1204
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1216

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1217

    :cond_1216
    nop

    :goto_1217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_121f

    move v1, v2

    nop

    :cond_121f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_122a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_123c

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_123d

    :cond_123c
    nop

    :goto_123d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1245

    move v1, v2

    nop

    :cond_1245
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setClipboardEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1250
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1262

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1263

    :cond_1262
    nop

    :goto_1263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_126b

    move v1, v2

    nop

    :cond_126b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1276
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1288

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1289

    :cond_1288
    nop

    :goto_1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1291

    move v1, v2

    nop

    :cond_1291
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setBackup(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_129c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12af

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_12b0

    :cond_12af
    nop

    :goto_12b0
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_12bc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12ce

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_12cf

    :cond_12ce
    nop

    :goto_12cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12d7

    move v1, v2

    nop

    :cond_12d7
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setMockLocation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_12e2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12ed

    move v1, v2

    nop

    :cond_12ed
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isScreenCaptureEnabledInternal(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_12f8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1307

    move v1, v2

    nop

    :cond_1307
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isScreenCaptureEnabledEx(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1312
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1324

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1325

    :cond_1324
    nop

    :goto_1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_132d

    move v1, v2

    nop

    :cond_132d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1338
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_134a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_134b

    :cond_134a
    nop

    :goto_134b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1353

    move v1, v2

    nop

    :cond_1353
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_135e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1370

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1371

    :cond_1370
    nop

    :goto_1371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1379

    move v1, v2

    nop

    :cond_1379
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1384
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1396

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1397

    :cond_1396
    nop

    :goto_1397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_139f

    move v1, v2

    nop

    :cond_139f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setUsbMediaPlayerAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_13aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13bd

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_13be

    :cond_13bd
    nop

    :goto_13be
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_13ca
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13dc

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_13dd

    :cond_13dc
    nop

    :goto_13dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13e5

    move v1, v2

    nop

    :cond_13e5
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_13f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1403

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1404

    :cond_1403
    nop

    :goto_1404
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1410
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1422

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1423

    :cond_1422
    nop

    :goto_1423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_142b

    move v1, v2

    nop

    :cond_142b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1436
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1449

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_144a

    :cond_1449
    nop

    :goto_144a
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1456
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1468

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1469

    :cond_1468
    nop

    :goto_1469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1471

    move v1, v2

    nop

    :cond_1471
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_147c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_148f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1490

    :cond_148f
    nop

    :goto_1490
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_149c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14ae

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14af

    :cond_14ae
    nop

    :goto_14af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14b7

    move v1, v2

    nop

    :cond_14b7
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_14c2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14d5

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14d6

    :cond_14d5
    nop

    :goto_14d6
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_14e2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14f4

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14f5

    :cond_14f4
    nop

    :goto_14f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14fd

    move v1, v2

    nop

    :cond_14fd
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1508
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_151b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_151c

    :cond_151b
    nop

    :goto_151c
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1528
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_153a

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_153b

    :cond_153a
    nop

    :goto_153b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1543

    move v1, v2

    nop

    :cond_1543
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setSdCardState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_154e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1559

    move v1, v2

    nop

    :cond_1559
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isNFCEnabledWithMsg(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1564
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isNFCEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1572
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1584

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1585

    :cond_1584
    nop

    :goto_1585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_158d

    move v1, v2

    nop

    :cond_158d
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setEnableNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1598
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15a3

    move v1, v2

    nop

    :cond_15a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_15b2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15c4

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_15c5

    :cond_15c4
    nop

    :goto_15c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15cd

    move v1, v2

    nop

    :cond_15cd
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_15d8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15ea

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_15eb

    :cond_15ea
    nop

    :goto_15eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15f3

    move v1, v2

    nop

    :cond_15f3
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setMicrophoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_15fe
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1610

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1611

    :cond_1610
    nop

    :goto_1611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1619

    move v1, v2

    nop

    :cond_1619
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1624
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1636

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1637

    :cond_1636
    nop

    :goto_1637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_163f

    move v1, v2

    nop

    :cond_163f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_164a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_164e
    .packed-switch 0x1
        :pswitch_1624
        :pswitch_15fe
        :pswitch_15d8
        :pswitch_15b2
        :pswitch_1598
        :pswitch_1572
        :pswitch_1564
        :pswitch_154e
        :pswitch_1528
        :pswitch_1508
        :pswitch_14e2
        :pswitch_14c2
        :pswitch_149c
        :pswitch_147c
        :pswitch_1456
        :pswitch_1436
        :pswitch_1410
        :pswitch_13f0
        :pswitch_13ca
        :pswitch_13aa
        :pswitch_1384
        :pswitch_135e
        :pswitch_1338
        :pswitch_1312
        :pswitch_12f8
        :pswitch_12e2
        :pswitch_12bc
        :pswitch_129c
        :pswitch_1276
        :pswitch_1250
        :pswitch_122a
        :pswitch_1204
        :pswitch_11ea
        :pswitch_11c4
        :pswitch_11a4
        :pswitch_117e
        :pswitch_1158
        :pswitch_1132
        :pswitch_1112
        :pswitch_10ec
        :pswitch_10cc
        :pswitch_10a6
        :pswitch_1080
        :pswitch_1066
        :pswitch_1040
        :pswitch_1020
        :pswitch_ffa
        :pswitch_fda
        :pswitch_fb4
        :pswitch_f94
        :pswitch_f6e
        :pswitch_f4e
        :pswitch_f28
        :pswitch_f08
        :pswitch_ef6
        :pswitch_ed0
        :pswitch_eaa
        :pswitch_e84
        :pswitch_e5e
        :pswitch_e38
        :pswitch_e12
        :pswitch_dec
        :pswitch_dc6
        :pswitch_da0
        :pswitch_d7a
        :pswitch_d54
        :pswitch_d34
        :pswitch_d0e
        :pswitch_ce8
        :pswitch_cc2
        :pswitch_ca2
        :pswitch_c7c
        :pswitch_c5c
        :pswitch_c36
        :pswitch_c16
        :pswitch_bf0
        :pswitch_bd0
        :pswitch_bbe
        :pswitch_b98
        :pswitch_b72
        :pswitch_b58
        :pswitch_b32
        :pswitch_b0c
        :pswitch_ae6
        :pswitch_ac0
        :pswitch_a9a
        :pswitch_a74
        :pswitch_a4e
        :pswitch_a28
        :pswitch_a0e
        :pswitch_9e8
        :pswitch_9c8
        :pswitch_9a2
        :pswitch_982
        :pswitch_958
        :pswitch_934
        :pswitch_90e
        :pswitch_8e8
        :pswitch_8c2
        :pswitch_89c
        :pswitch_882
        :pswitch_85c
        :pswitch_836
        :pswitch_810
        :pswitch_7fa
        :pswitch_7d4
        :pswitch_7b4
        :pswitch_7a2
        :pswitch_77c
        :pswitch_756
        :pswitch_730
        :pswitch_70a
        :pswitch_6e4
        :pswitch_6be
        :pswitch_698
        :pswitch_672
        :pswitch_64c
        :pswitch_626
        :pswitch_600
        :pswitch_5e0
        :pswitch_5ba
        :pswitch_594
        :pswitch_56e
        :pswitch_548
        :pswitch_528
        :pswitch_504
        :pswitch_4e4
        :pswitch_4c4
        :pswitch_4ae
        :pswitch_488
        :pswitch_47a
        :pswitch_45a
        :pswitch_43a
        :pswitch_414
        :pswitch_3ea
        :pswitch_3c6
        :pswitch_38c
        :pswitch_36c
        :pswitch_34c
        :pswitch_326
        :pswitch_300
        :pswitch_2da
        :pswitch_2cc
        :pswitch_2a6
        :pswitch_286
        :pswitch_262
        :pswitch_254
        :pswitch_246
        :pswitch_220
        :pswitch_200
        :pswitch_1da
        :pswitch_1ba
        :pswitch_194
        :pswitch_174
        :pswitch_14e
        :pswitch_128
        :pswitch_108
        :pswitch_f6
        :pswitch_d0
        :pswitch_aa
        :pswitch_84
        :pswitch_5e
        :pswitch_38
        :pswitch_12
    .end packed-switch
.end method
