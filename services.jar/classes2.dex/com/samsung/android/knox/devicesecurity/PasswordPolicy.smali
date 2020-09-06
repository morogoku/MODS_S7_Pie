.class public Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final ACTION_PASSWORD_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PASSWORD_CHANGED_INTERNAL"

.field public static final ACTION_PWD_CHANGE_TIMEOUT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

.field public static final BIOMETRIC_AUTHENTICATION_FACE:I = 0x4

.field public static final BIOMETRIC_AUTHENTICATION_FINGERPRINT:I = 0x1

.field public static final BIOMETRIC_AUTHENTICATION_IRIS:I = 0x2

.field public static final PWD_CHANGE_ENFORCED:I = 0x1

.field public static final PWD_CHANGE_ENFORCED_CANCELLED:I = 0x2

.field public static final PWD_CHANGE_ENFORCED_INCALL:I = -0x2

.field public static final PWD_CHANGE_ENFORCED_INCALL_CANCELLED:I = -0x3

.field public static final PWD_CHANGE_ENFORCED_INCALL_NEW_PASSWORD:I = -0x4

.field public static final PWD_CHANGE_ENFORCED_NEW_PASSWORD:I = 0x3

.field public static final PWD_CHANGE_ENFORCE_CANCELLING:I = -0x1

.field public static final PWD_CHANGE_NOT_ENFORCED:I

.field private static TAG:Ljava/lang/String;

.field public static final enforcePwdExceptions:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

.field private mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 59

    const-string v0, "PasswordPolicy"

    sput-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "com.android.settings.SubSettings"

    const-string v2, "com.android.settings.password.ChooseLockPassword"

    const-string v3, "com.android.settings.password.ChooseLockPattern"

    const-string v4, "com.samsung.android.settings.ChooseLockEnterpriseIdentity"

    const-string v5, "com.sec.android.service.singlesignon.activity.KerberosLoginActivity"

    const-string v6, "com.sec.android.service.singlesignon.activity.ChangePasswordActivity"

    const-string v7, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    const-string v8, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    const-string v9, "com.android.phone.EmergencyDialer"

    const-string v10, "com.android.phone.OutgoingCallBroadcaster"

    const-string v11, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    const-string v12, "com.android.phone.InCallScreen"

    const-string v13, "com.android.internal.policy.impl.LockScreen"

    const-string v14, "com.android.internal.policy.impl.PatternUnlockScreen"

    const-string v15, "com.android.internal.policy.impl.PasswordUnlockScreen"

    const-string v16, "com.android.incallui.InCallActivity"

    const-string v17, "com.android.server.telecom.EmergencyCallActivity"

    const-string v18, "com.samsung.android.app.telephonyui.emergencydialer.view.EmergencyDialerActivity"

    const-string v19, "com.android.incallui.SecInCallActivity"

    const-string v20, "com.samsung.phone.EmergencyDialer"

    const-string v21, "com.skt.prod.phone.activities.phone.OutgoingCallBroadcaster"

    const-string v22, "com.skt.prod.phone.activities.phone.TPhoneActivity"

    const-string v23, "com.sec.android.inputmethod.implement.setting.OnBoardingSettingsActivity"

    const-string v24, "com.android.settings.password.ChooseLockGeneric"

    const-string v25, "com.android.settings.password.ChooseLockGeneric$InternalActivity"

    const-string v26, "com.samsung.android.settings.knox.KnoxChooseLockTwoFactor"

    const-string v27, "com.android.settings.Settings$RegisterIrisSettingsActivity"

    const-string v28, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    const-string v29, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    const-string v30, "com.samsung.android.settings.iris.IrisLockSettings"

    const-string v31, "com.samsung.android.settings.iris.UseIrisLockSettings"

    const-string v32, "com.android.settings.fingerprint.FingerprintLockSettings"

    const-string v33, "com.android.settings.fingerprint.RegisterFingerprint"

    const-string v34, "com.android.settings.fingerprint.FingerprintEnrollActivity"

    const-string v35, "com.android.settings.fingerprint.UseFingerprintLockSettings"

    const-string v36, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    const-string v37, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    const-string v38, "com.samsung.android.settings.notification.SecRedactionInterstitial"

    const-string v39, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    const-string v40, "com.samsung.android.settings.biometrics.BiometricsSelectBackupPassword"

    const-string v41, "com.samsung.android.settings.biometrics.BiometricsBackupPassword"

    const-string v42, "com.osp.app.signin.AccountView"

    const-string v43, "com.osp.app.signin.ui.AccountHelpPreference"

    const-string v44, "com.osp.app.signin.ui.WebContentView"

    const-string v45, "com.osp.app.signin.ui.AccountSetupCompleteView"

    const-string v46, "com.osp.app.signin.ui.UserValidateCheck"

    const-string v47, "com.samsung.android.bio.face.service.enroll.FaceEnrollActivity"

    const-string v48, "com.samsung.android.biometrics.service.enroll.IntelligentScanEnrollActivity"

    const-string v49, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    const-string v50, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    const-string v51, "com.samsung.android.settings.biometrics.UseBiometricsLockSettingsGeneric"

    const-string v52, "com.samsung.android.settings.face.FaceFasterRecognition"

    const-string v53, "com.samsung.android.settings.face.FaceLockSettings"

    const-string v54, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    const-string v55, "com.samsung.android.settings.smartscan.SmartScanIntroduce"

    const-string v56, "com.android.settings.enterprise.ActionDisabledByAdminDialog"

    const-string v57, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardUserSetupActivity"

    const-string v58, "com.android.settings.password.SetNewPasswordActivity"

    filled-new-array/range {v1 .. v58}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    iput-object p2, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v1, p2, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-void
.end method

.method private getGenericSSOService()Lcom/samsung/android/knox/sso/common/IGenericSSO;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    if-nez v0, :cond_10

    const-string v0, "genericssoservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/sso/common/IGenericSSO$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-object v0
.end method


# virtual methods
.method public deleteAllRestrictions()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.deleteAllRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->deleteAllRestrictions(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public enforcePwdChange()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.enforcePwdChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.excludeExternalStorageForFailedPasswordsWipe"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->excludeExternalStorageForFailedPasswordsWipe(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getGenericSSOService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Calling getAuthenticationConfig in GenericSSOService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getGenericSSOService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "In getEnterpriseIdentityAuthentication: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForbiddenStrings(Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.getForbiddenStrings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getDataForbidden!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumCharacterOccurences()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMaxRepeatedCharacters!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumCharacterSequenceLength()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMaximumCharacterSequenceLength!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumFailedPasswordsForDeviceDisable()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMaximumFailedPasswordsForDeviceDisable!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumNumericSequenceLength()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getNumericSequencesForbidden!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMinimumCharacterChangeLength()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMinCharacterChangeLength!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public getPasswordChangeTimeout()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    return v2

    :cond_17
    const/4 v2, 0x0

    return v2
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordLockDelay()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getPasswordLockDelay!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.getRequiredPwdPatternRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedBiometricAuthentications()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getSupportedBiometricAuthentications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasForbiddenCharacterSequence(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public hasForbiddenData(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public hasForbiddenNumericSequence(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public hasMaxRepeatedCharacters(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isBiometricAuthenticationEnabled(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "PasswordPolicy.isBiometricAuthenticationEnabled : getService() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isBiometricAuthenticationEnabledAsUser(II)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "PasswordPolicy.isBiometricAuthenticationEnabled : getService() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isChangeRequested()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isMDMDisabledFP(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMDMDisabledFP(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isMultifactorAuthenticationEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.isMultifactorAuthenticationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public isPasswordPatternMatched(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isPasswordTableExist()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordTableExist(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isPasswordVisibilityEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isServiceRunning()Z
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "isServiceRunning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public lock()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.lock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->lock(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.reboot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "password policy : reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_2d

    :try_start_15
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "password policy : reboot getService()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->reboot(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    return-void
.end method

.method public setBiometricAuthenticationEnabled(IZ)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setBiometricAuthenticationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setEnterpriseIdentityAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setEnterpriseIdentityAuthentication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-nez p1, :cond_f

    new-instance v0, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    move-object p1, v0

    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setConfiguredByMDM(Z)V

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Calling setAuthenticationConfig in GenericSSOService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getGenericSSOService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    return v0

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "In setEnterpriseIdentityAuthentication: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setForbiddenStrings(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setForbiddenStrings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setDataForbidden!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public setMaximumCharacterOccurrences(I)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumCharacterOccurrences"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumCharacterOccurrences(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMaxRepeatedCharacters!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMaximumCharacterSequenceLength(I)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumCharacterSequenceLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMaximumCharacterSequenceLength!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMaximumFailedPasswordsForDeviceDisable(I)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumFailedPasswordsForDeviceDisable"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMaximumFailedPasswordsForDeviceDisable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumFailedPasswordsForWipe"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setMaximumNumericSequenceLength(I)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumNumericSequenceLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setNumericSequencesForbidden!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMinPasswordComplexChars"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    const/4 v0, 0x4

    if-lt p2, v0, :cond_2e

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "length is bigger than 4! set Upper & lower case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    goto :goto_41

    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    :goto_41
    return-void
.end method

.method public setMinimumCharacterChangeLength(I)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMinimumCharacterChangeLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMinCharacterChangeLength!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMultifactorAuthenticationEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMultifactorAuthenticationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setPasswordChangeTimeout(I)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordChangeTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordExpires"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    int-to-long v1, p2

    const-wide/32 v3, 0x5265c00

    mul-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordHistory"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-gez p2, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordLockDelay(I)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordLockDelay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setPasswordLockDelay"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordMinimumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordMinimumLetters"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordMinimumNonLetter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordQuality"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setPasswordVisibilityEnabled(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordVisibilityEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setPwdChangeRequested(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setRequiredPasswordPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setScreenLockPatternVisibilityEnabled(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setScreenLockPatternVisibilityEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.unlock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->unlock(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
