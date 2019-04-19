.class public Lcom/samsung/android/knox/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;,
        Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_CALL_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CALL_STATE_CHANGED"

.field public static final ACTION_CHECK_REENROLLMENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

.field public static final ACTION_DO_KEYGUARD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

.field public static final ACTION_EDM_BOOT_COMPLETED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

.field public static final ACTION_HARD_KEY_PRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

.field public static final ACTION_KEYGUARD_REFRESH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KEYGUARD_REFRESH_INTERNAL"

.field public static final ACTION_MTP_BLOCKED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTP_BLOCKED_INTERNAL"

.field public static final ACTION_NOTIFY_STORAGE_CARD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_STORAGE_CARD_INTERNAL"

.field public static final ACTION_NO_USER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NO_USER_ACTIVITY"

.field public static final ACTION_OPERATOR_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.OPERATOR_NAME_INTERNAL"

.field public static final ACTION_QUICKSETTING_REFRESH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.QUICKSETTING_REFRESH_INTERNAL"

.field public static final ACTION_SEND_DTMF_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SEND_DTMF_INTERNAL"

.field public static final ACTION_SET_KEYBOARD_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SET_KEYBOARD_MODE_INTERNAL"

.field public static final ACTION_USER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.intent.action.USER_ACTIVITY"

.field public static final APN_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "apn_settings_policy"

.field public static final APPLICATION_POLICY_SERVICE:Ljava/lang/String; = "application_policy"

.field public static final APPPERMISSION_POLICY_SERVICE:Ljava/lang/String; = "apppermission_control_policy"

.field public static final AUDIT_LOG:Ljava/lang/String; = "auditlog"

.field public static final BLUETOOTH_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_policy"

.field public static final BROWSER_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "browser_policy"

.field public static final BT_SECURE_MODE_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_secure_mode_policy"

.field public static final CERTIFICATE_POLICY_SERVICE:Ljava/lang/String; = "certificate_policy"

.field public static final DATE_TIME_POLICY_SERVICE:Ljava/lang/String; = "date_time_policy"

.field public static final DEFAULT_USER_ACTIVITY_TIMEOUT:I = 0x0

.field public static final DEVICE_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "device_account_policy"

.field public static final DEVICE_INVENTORY_SERVICE:Ljava/lang/String; = "device_info"

.field public static final DEX_POLICY_SERVICE:Ljava/lang/String; = "dex_policy"

.field public static final DUALSIM_POLICY_SERVICE:Ljava/lang/String; = "dualsim_policy"

.field public static final EAS_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "eas_account_policy"

.field public static final EMAIL_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "email_account_policy"

.field public static final EMAIL_POLICY_SERVICE:Ljava/lang/String; = "email_policy"

.field public static final ENTERPRISE_BILLING_POLICY_SERVICE:Ljava/lang/String; = "enterprise_billing_policy"

.field public static final ENTERPRISE_CONTAINER_POLICY_SERVICE:Ljava/lang/String; = "enterprise_container_policy"

.field public static final ENTERPRISE_DLP_SERVICE:Ljava/lang/String; = "enterprise_dlp_service"

.field public static final ENTERPRISE_ISL_POLICY_SERVICE:Ljava/lang/String; = "enterprise_isl_policy"

.field public static final ENTERPRISE_LICENSE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_license_policy"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy_new"

.field public static final ENTERPRISE_SHARED_DEVICE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_shared_device_policy"

.field public static final ENTERPRISE_VPN_POLICY_SERVICE:Ljava/lang/String; = "enterprise_vpn_policy"

.field public static final ERROR_CRYPTO_CHECK_FAILURE:I = -0x5

.field public static final ERROR_INVALID_FILE:I = -0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ACTIVE_ADMIN:I = -0x2

.field public static final ERROR_PACKAGE_NAME_MISMATCH:I = -0x4

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CALL_STATE"

.field public static final EXTRA_CURRENT_VERSION:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CURRENT_VERSION"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final EXTRA_DTMF_DURATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DTMF_DURATION_INTERNAL"

.field public static final EXTRA_DTMF_TONE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DTMF_TONE_INTERNAL"

.field public static final EXTRA_KEYBOARD_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEYBOARD_MODE_INTERNAL"

.field public static final EXTRA_KEY_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEY_CODE"

.field public static final EXTRA_MIGRATION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.MIGRATION_RESULT"

.field public static final EXTRA_PHONE_STATE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PHONE_STATE"

.field public static final FIREWALL_POLICY_SERVICE:Ljava/lang/String; = "firewall_policy"

.field public static final FIREWALL_SERVICE:Ljava/lang/String; = "firewall"

.field public static final GENERIC_SSO_SERVICE:Ljava/lang/String; = "genericssoservice"

.field public static final GEOFENCING:Ljava/lang/String; = "geofencing"

.field public static final KIOSKMODE:Ljava/lang/String; = "kioskmode"

.field public static final KNOX_2_7_1:I = 0x15

.field public static final KNOX_2_8:I = 0x16

.field public static final KNOX_CCM_POLICY_SERVICE:Ljava/lang/String; = "knox_ccm_policy"

.field public static final KNOX_NETWORK_ANALYTICS_SERVICE:Ljava/lang/String; = "knoxnap"

.field public static final KNOX_SCEP_POLICY_SERVICE:Ljava/lang/String; = "knox_scep_policy"

.field public static final KNOX_TIMAKEYSTORE_POLICY_SERVICE:Ljava/lang/String; = "knox_timakeystore_policy"

.field public static final KNOX_TRUSTED_PINPAD_POLICY_SERVICE:Ljava/lang/String; = "knox_pinpad_service"

.field public static final KNOX_UCSM_POLICY_SERVICE:Ljava/lang/String; = "knox_ucsm_policy"

.field public static final KPU_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.kpu"

.field public static final LDAP_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "ldap_account_policy"

.field public static final LICENSE_LOG_SERVICE:Ljava/lang/String; = "license_log_service"

.field public static final LOCATION_POLICY_SERVICE:Ljava/lang/String; = "location_policy"

.field public static final LOCKSCREEN_OVERLAY_SERVICE:Ljava/lang/String; = "lockscreen_overlay"

.field public static final LOG_MANAGER_SERVICE:Ljava/lang/String; = "log_manager_service"

.field public static final MISC_POLICY_SERVICE:Ljava/lang/String; = "misc_policy"

.field public static final MULTI_USER_MANAGER_SERVICE:Ljava/lang/String; = "multi_user_manager_service"

.field public static final MUM_CONTAINER_POLICY_SERVICE:Ljava/lang/String; = "mum_container_policy"

.field public static final MUM_CONTAINER_RCP_POLICY_SERVICE:Ljava/lang/String; = "mum_container_rcp_policy"

.field public static final PASSWORD_POLICY_SERVICE:Ljava/lang/String; = "password_policy"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PHONE_RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "phone_restriction_policy"

.field public static final REMOTE_INJECTION_SERVICE:Ljava/lang/String; = "remoteinjection"

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "restriction_policy"

.field public static final ROAMING_POLICY_SERVICE:Ljava/lang/String; = "roaming_policy"

.field public static final SEANDROID_POLICY:Ljava/lang/String; = "seandroid_policy"

.field public static final SECURITY_POLICY_SERVICE:Ljava/lang/String; = "security_policy"

.field public static final SMARTCARD_ACCESS_POLICY_SERVICE:Ljava/lang/String; = "smartcard_access_policy"

.field public static final SMARTCARD_BROWSER_POLICY_SERVICE:Ljava/lang/String; = "smartcard_browser_policy"

.field public static final SMARTCARD_EMAIL_POLICY_SERVICE:Ljava/lang/String; = "smartcard_email_policy"

.field public static final SMARTCARD_LOCKSCREEN_POLICY_SERVICE:Ljava/lang/String; = "smartcard_lockscreen_policy"

.field public static final SMARTCARD_VPN_POLICY_SERVICE:Ljava/lang/String; = "smartcard_vpn_policy"

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_ACTIVE:I = 0x5b

.field public static final USER_CREATION_IN_PROGRESS:I = 0x5d

.field public static final USER_DOESNT_EXISTS:I = -0x1

.field public static final USER_LOCKED:I = 0x5f

.field public static final VPN_POLICY_SERVICE:Ljava/lang/String; = "vpn_policy"

.field public static final WIFI_POLICY_SERVICE:Ljava/lang/String; = "wifi_policy"

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field private static final mSync:Ljava/lang/Object;

.field private static sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# instance fields
.field private volatile mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

.field private volatile mApnSettingsPolicy:Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;

.field private volatile mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

.field private volatile mBTSecureModePolicy:Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;

.field private volatile mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

.field private volatile mBluetoothPolicy:Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;

.field private volatile mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

.field private volatile mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

.field private volatile mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private volatile mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

.field private volatile mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

.field private volatile mDeviceInventory:Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

.field private volatile mDeviceSecurityPolicy:Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

.field private volatile mDexManager:Lcom/samsung/android/knox/dex/DexManager;

.field private volatile mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

.field private volatile mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

.field private volatile mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

.field private volatile mEnterpriseLicenseManager:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

.field private volatile mEnterpriseSharedDevicePolicy:Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

.field private volatile mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

.field private volatile mFont:Lcom/samsung/android/knox/display/Font;

.field private volatile mGenericSSO:Lcom/samsung/android/knox/sso/config/GenericSSO;

.field private volatile mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

.field private volatile mGlobalProxy:Lcom/samsung/android/knox/net/GlobalProxy;

.field private volatile mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

.field private volatile mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

.field private volatile mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

.field private volatile mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

.field private volatile mMultiUserManager:Lcom/samsung/android/knox/multiuser/MultiUserManager;

.field private volatile mNfcPolicy:Lcom/samsung/android/knox/nfc/NfcPolicy;

.field private volatile mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private volatile mPhonePolicy:Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

.field private volatile mPhoneRestrictionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRemoteInjection:Lcom/samsung/android/knox/remotecontrol/RemoteInjection;

.field private volatile mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private volatile mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

.field private volatile mSPDControlPolicy:Lcom/samsung/android/knox/restriction/SPDControlPolicy;

.field private mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private volatile mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

.field private volatile mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "EnterpriseDeviceManager"

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .registers 6

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p3, :cond_25

    iget v0, p4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p4, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :cond_1f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object p4, v2

    :cond_25
    iput-object p4, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 5

    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V

    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object v1, v0

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method public static getAPILevel()I
    .registers 3

    :try_start_0
    const-string v0, "28"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed parsing API level"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3

    if-nez p0, :cond_c

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p0, v0

    :cond_c
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return v0

    :cond_17
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method static getContainerId(I)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method static getContainerType(I)I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public static getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;
    .registers 2

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_d

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_3:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_d
    const/16 v1, 0x18

    if-ne v0, v1, :cond_14

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_14
    const/16 v1, 0x17

    if-ne v0, v1, :cond_1b

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_1b
    const/16 v1, 0x16

    if-ne v0, v1, :cond_22

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_22
    const/16 v1, 0x15

    if-ne v0, v1, :cond_29

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_0:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_29
    const/16 v1, 0x14

    if-ne v0, v1, :cond_30

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_9:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_30
    const/16 v1, 0x13

    if-ne v0, v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_8:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_37
    const/16 v1, 0x12

    if-ne v0, v1, :cond_3e

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_3e
    const/16 v1, 0x11

    if-ne v0, v1, :cond_45

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_45
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4c

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_4c
    const/16 v1, 0xf

    if-ne v0, v1, :cond_53

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_53
    const/16 v1, 0xe

    if-ne v0, v1, :cond_5a

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_5a
    const/16 v1, 0xd

    if-ne v0, v1, :cond_61

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_61
    const/16 v1, 0xc

    if-ne v0, v1, :cond_68

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_68
    const/16 v1, 0xb

    if-ne v0, v1, :cond_6f

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_3:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_6f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_76

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_2:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1

    :cond_76
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_e
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    const-string v0, "enterprise_policy_new"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static getUserId(Landroid/os/UserHandle;)I
    .registers 4

    if-eqz p0, :cond_f

    :try_start_2
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get user id by calling userHandle.getIdentifier()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public activateAdminForUser(Landroid/content/ComponentName;ZI)V
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public activateDevicePermissions(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->activateDevicePermissions(Ljava/util/List;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public addAuthorizedUid(II)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "addAuthorizedUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->addAuthorizedUid(II)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .registers 8

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public captureUmcLogs(Ljava/lang/String;Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "captureUmcLogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->captureUmcLogs(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)[B

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public configureContainerAdminForMigration(Z)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->configureContainerAdminForMigration(Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public deactivateAdminForUser(Landroid/content/ComponentName;I)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->deactivateAdminForUser(Landroid/content/ComponentName;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public disableConstrainedState()Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :catch_27
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_30
    :goto_30
    const/4 v0, 0x0

    return v0
.end method

.method public enableConstrainedState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_35

    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :catch_2c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0
.end method

.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public enforceActiveAdminPermission(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    return-object p1
.end method

.method public enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    return-object p1
.end method

.method public enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    return-object p1
.end method

.method public enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    return-object p1
.end method

.method public enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    return-object p1
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    return-object p1
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    return-object p1
.end method

.method public enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    return-object p1
.end method

.method public enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    return-object p1
.end method

.method public enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    return-object p1
.end method

.method public enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    return-object p1
.end method

.method public getAPMPolicy()Lcom/samsung/android/knox/devicesecurity/APMPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdminContextIfCallerInCertWhiteList(Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdminRemovable()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public getAdminRemovable(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public getAdminUidForAuthorizedUid(I)I
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getAdminUidForAuthorizedUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getAdminUidForAuthorizedUid(I)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public getApnSettingsPolicy()Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mApnSettingsPolicy:Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mApnSettingsPolicy:Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mApnSettingsPolicy:Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/application/ApplicationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getAuthorizedUidForAdminUid(I)I
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getAuthorizedUidForAdminUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getAuthorizedUidForAdminUid(I)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/container/BasePasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getBluetoothPolicy()Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBluetoothPolicy:Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBluetoothPolicy:Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBluetoothPolicy:Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getBluetoothSecureModePolicy()Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBTSecureModePolicy:Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBTSecureModePolicy:Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBTSecureModePolicy:Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/lockscreen/BootBanner;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/lockscreen/BootBanner;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getBrowserPolicy()Lcom/samsung/android/knox/browser/BrowserPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/browser/BrowserPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/browser/BrowserPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getCertificateProvisioning()Lcom/samsung/android/knox/keystore/CertificateProvisioning;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getConstrainedState()I
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getConstrainedState()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    return v0
.end method

.method public getDateTimePolicy()Lcom/samsung/android/knox/datetime/DateTimePolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/datetime/DateTimePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getDeviceAccountPolicy()Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceInventory:Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceInventory:Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceInventory:Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getDeviceSecurityPolicy()Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceSecurityPolicy:Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceSecurityPolicy:Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDeviceSecurityPolicy:Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getDexManager()Lcom/samsung/android/knox/dex/DexManager;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/dex/DexManager;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/dex/DexManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getEmailAccountPolicy()Lcom/samsung/android/knox/accounts/EmailAccountPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getEmailPolicy()Lcom/samsung/android/knox/accounts/EmailPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/accounts/EmailPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/accounts/EmailPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getEnterpriseLicenseManager()Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEnterpriseLicenseManager:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEnterpriseLicenseManager:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEnterpriseLicenseManager:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;
    .registers 2

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v0

    return-object v0
.end method

.method public getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEnterpriseSharedDevicePolicy:Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEnterpriseSharedDevicePolicy:Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEnterpriseSharedDevicePolicy:Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getExchangeAccountPolicy()Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/net/firewall/Firewall;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getFont()Lcom/samsung/android/knox/display/Font;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mFont:Lcom/samsung/android/knox/display/Font;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mFont:Lcom/samsung/android/knox/display/Font;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/display/Font;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/display/Font;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mFont:Lcom/samsung/android/knox/display/Font;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getGenericSSO()Lcom/samsung/android/knox/sso/config/GenericSSO;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGenericSSO:Lcom/samsung/android/knox/sso/config/GenericSSO;

    if-nez v0, :cond_1a

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGenericSSO:Lcom/samsung/android/knox/sso/config/GenericSSO;

    move-object v0, v1

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/sso/config/GenericSSO;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGenericSSO:Lcom/samsung/android/knox/sso/config/GenericSSO;

    :cond_15
    monitor-exit p0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public getGeofencing()Lcom/samsung/android/knox/location/Geofencing;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/location/Geofencing;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/location/Geofencing;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getGlobalProxy()Lcom/samsung/android/knox/net/GlobalProxy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGlobalProxy:Lcom/samsung/android/knox/net/GlobalProxy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGlobalProxy:Lcom/samsung/android/knox/net/GlobalProxy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/net/GlobalProxy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/GlobalProxy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mGlobalProxy:Lcom/samsung/android/knox/net/GlobalProxy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getKPUPackageName()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getKPUPackageName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/kiosk/KioskMode;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getLDAPAccountPolicy()Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getLocationPolicy()Lcom/samsung/android/knox/location/LocationPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/location/LocationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/location/LocationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getLockscreenOverlay()Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMaximumTimeToLock()J
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMultiUserManager()Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mMultiUserManager:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mMultiUserManager:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mMultiUserManager:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getMyKnoxAdmin()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getMyKnoxAdmin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNfcPolicy()Lcom/samsung/android/knox/nfc/NfcPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mNfcPolicy:Lcom/samsung/android/knox/nfc/NfcPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mNfcPolicy:Lcom/samsung/android/knox/nfc/NfcPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/nfc/NfcPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/nfc/NfcPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mNfcPolicy:Lcom/samsung/android/knox/nfc/NfcPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public getPasswordMaximumLength(I)I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getPasswordQuality()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
    .registers 4

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    goto :goto_2c

    :cond_20
    new-instance v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2c
    return-object v0
.end method

.method public getProxyAdmins(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteInjection()Lcom/samsung/android/knox/remotecontrol/RemoteInjection;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRemoteInjection:Lcom/samsung/android/knox/remotecontrol/RemoteInjection;

    if-nez v0, :cond_17

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRemoteInjection:Lcom/samsung/android/knox/remotecontrol/RemoteInjection;

    move-object v0, v1

    if-nez v0, :cond_12

    new-instance v1, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;

    invoke-direct {v1}, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRemoteInjection:Lcom/samsung/android/knox/remotecontrol/RemoteInjection;

    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    return-object v0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/restriction/RoamingPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getSPDControlPolicy()Lcom/samsung/android/knox/restriction/SPDControlPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSPDControlPolicy:Lcom/samsung/android/knox/restriction/SPDControlPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSPDControlPolicy:Lcom/samsung/android/knox/restriction/SPDControlPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/restriction/SPDControlPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/restriction/SPDControlPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSPDControlPolicy:Lcom/samsung/android/knox/restriction/SPDControlPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getUserStatus(I)I
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getUserStatus(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public getVpnPolicy()Lcom/samsung/android/knox/net/vpn/VpnPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public hasAnyActiveAdmin()Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "No EnterpriseDeviceManager service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get hasAnyActiveAdmin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isActivePasswordSufficient()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    return v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public isMigrationStateNOK()Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMigrationStateNOK()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public lockNow()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    return-void
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->migrateApplicationDisablePolicy(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public migrateEnterpriseContainer(IZ)Z
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->migrateEnterpriseContainer(IZ)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public readUmcEnrollmentData()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readUmcEnrollmentData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->readUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_18
    return-void
.end method

.method public removeAuthorizedUid(II)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeAuthorizedUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeAuthorizedUid(II)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public removeProxyAdmin(I)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setActiveAdminSilent(Landroid/content/ComponentName;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseDeviceManager.setAdminRemovable"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Can NOT Found PackageName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can NOT Find PackageName"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_27
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public setAdminRemovable(ZLjava/lang/String;)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_28

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Can NOT Found PackageName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can NOT Find PackageName"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public setMaximumFailedPasswordsForWipe(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setMaximumTimeToLock(J)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    return-void
.end method

.method public setMyKnoxAdmin(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMyKnoxAdmin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setPasswordMinimumLength(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordQuality(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public updateProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .registers 8

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->updateProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public wipeData(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    return-void
.end method

.method public writeUmcEnrollmentData(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeUmcEnrollmentData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->writeUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method
