.class public Lcom/samsung/android/knox/sso/common/GenericSSOConstants;
.super Ljava/lang/Object;
.source "GenericSSOConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$PasswordPolicyKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$KerberosRequestKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$SAMLResponseKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$SAMLRequestKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$OAuthResponseKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$OAuthRequestKeys;
    }
.end annotation


# static fields
.field public static final ACTION_GENERICSSO_TOKEN_CLEAR:Ljava/lang/String; = "genericsso.INTENT.ACTION.tokens_cleared"

.field public static AUTHENTICATION_STATUS:Ljava/lang/String; = null

.field public static final BIND_ACTION_GENERICSSO:Ljava/lang/String; = ".genericssoconnection"

.field public static final CHANGE_PASSWORD_ENTERPRISE_IDENTITY:I = 0x4

.field public static final CUSTOMER_BRAND_LOGO:Ljava/lang/String; = "customer_brand_logo"

.field public static final CUSTOMER_BRAND_NAME:Ljava/lang/String; = "customer_brand_name"

.field public static final DEBUG:Z

.field public static final ENFORCE_REMOTE_AUTH_ALWAYS:Ljava/lang/String; = "enforceRemoteAuthAlways"

.field public static ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String; = null

.field public static ENTERPRISEID_PASSWORD:Ljava/lang/String; = null

.field public static ENTERPRISEID_USERNAME:Ljava/lang/String; = null

.field public static final ERROR_CLIENT_ID_ABSENT:I = -0xb

.field public static final ERROR_DATA_OVERSIZE:I = -0xe

.field public static final ERROR_FAIL:I = -0x1

.field public static final ERROR_FILE_NOT_FOUND:I = -0x5

.field public static final ERROR_INVALID_PARAMETER:I = -0x3

.field public static final ERROR_LICENSE_CHECK_FAILED:I = -0x8

.field public static final ERROR_NETWORK_NOT_AVAILABLE:I = -0xf

.field public static final ERROR_NOT_AUTHORIZED:I = -0x2

.field public static final ERROR_NOT_SAME_MDM:I = -0xa

.field public static final ERROR_PACKAGE_NOT_WHITELISTED:I = -0x7

.field public static final ERROR_PASSWORD_EXPIRED:I = -0x12

.field public static final ERROR_REMOTE_PROCESSING:I = -0x10

.field public static final ERROR_SECOND_SSOPROVIDER_REJECTED:I = -0x9

.field public static final ERROR_SERVICE_NOT_BOUND:I = -0x4

.field public static final ERROR_SSOAUTHENTICATOR_NOT_INSTALLED:I = -0xc

.field public static final ERROR_SSOAUTHENTICATOR_SIGNATURE_NOT_MATCHED:I = -0xd

.field public static final ERROR_SSOPROVIDER_NOT_ENROLLED:I = -0x6

.field public static final ERROR_USER_CANCELLED:I = -0x11

.field public static final FORCE_ENTERPRISE_IDENTITY_LOCK:Ljava/lang/String; = "forceEnterpriseIDLock"

.field public static final HIDE_ENTERPRISE_ID_LOCK:Ljava/lang/String; = "hideEnterpriseIDLock"

.field public static final IS_SSO_CONFIG_ENABLED:Ljava/lang/String; = "is_sso_config_enabled"

.field public static OPERATION_MODE:Ljava/lang/String; = null

.field public static final PROTOCOL_KERBEROS:I = 0x3

.field public static final PROTOCOL_OAUTH:I = 0x2

.field public static final PROTOCOL_OPENID:I = 0x4

.field public static final PROTOCOL_SAML:I = 0x1

.field public static final SETUP_ENTERPRISE_IDENTITY:I = 0x2

.field public static final SSO_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "servicepackagename"

.field public static final SSO_PROVIDER_PACKAGE_SIGNATURE:Ljava/lang/String; = "servicepackagesignature"

.field public static final SSO_PROVIDER_PROTOCAL_TYPE:Ljava/lang/String; = "protocoltype"

.field public static final SSO_PROVIDER_SETBY_MDMUID:Ljava/lang/String; = "mdmuid"

.field public static final SUCCESS:I = 0x0

.field public static final UNLOCK_ENTERPRISE_IDENTITY:I = 0x3

.field public static final WHITELIST_PACKAGE_NAME:Ljava/lang/String; = "clientpackagename"

.field public static final WHITELIST_PACKAGE_SIGNATURE:Ljava/lang/String; = "clientpackagesignature"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "enterprise_username"

    sput-object v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    const-string v0, "enterprise_password"

    sput-object v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    const-string v0, "enterprise_old_password"

    sput-object v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String;

    const-string v0, "auth_status"

    sput-object v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    const-string/jumbo v0, "operation_mode"

    sput-object v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
