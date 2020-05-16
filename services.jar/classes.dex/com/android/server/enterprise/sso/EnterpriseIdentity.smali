.class public Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final AUTH_CONF_DATA_FILENAME:Ljava/lang/String; = "authconfig.xml"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final DATASYSTEM_DIR:Ljava/lang/String; = "/data/system/"

.field private static final DATA_KEY_LENGTH:I = 0x10

.field private static final DEBUG:Z

.field private static final EID_PASSWORD_TOKEN:Ljava/lang/String; = "password_token"

.field private static final EID_PASSWORD_TOKEN_HANDLE:Ljava/lang/String; = "password_token_handle"

.field private static final EID_PASSWORD_TOKEN_KEY:Ljava/lang/String; = "password_token_key"

.field public static final EID_TOKEN:Ljava/lang/String; = "eid_reset_password_token"

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF_8"

.field private static final IS_CONFIGURED_BY_MDM:Ljava/lang/String; = "isConfiguredByMDM"

.field private static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEYWORD_AUTHPROVIDER:Ljava/lang/String; = "authenticationprovider"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEY_STORE_ALIAS:Ljava/lang/String; = "KnoxEIDTokenKey"

.field private static final KNOXEID_SECRETKEY_FILE:Ljava/lang/String; = "KnoxEID_SCKF"

.field private static final KNOX_USERX_AUTHCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NETWORK_AUTH_FORCE_STATE:Ljava/lang/String; = "network_auth_force_state"

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "EnterpriseIdentity"

.field private static final USERAUTHENTICATION:I = 0x4

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static authenticationConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeyPair:Ljava/security/KeyPair;

.field private static mKeystore:Ljava/security/KeyStore;

.field private static mSecretKey:Ljava/security/Key;

.field private static final mSecretKeyLock:Ljava/lang/Object;

.field private static sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mSdpManagerService:Lcom/android/server/SdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKeyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    return-void
.end method

.method private _setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, -0x1

    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    if-nez v0, :cond_c

    return v3

    :cond_c
    const/4 v4, 0x0

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const/4 v8, 0x0

    if-nez v5, :cond_13d

    const-string v9, "authenticationprovider"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    move-object v8, v9

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2d

    const-string/jumbo v9, "servicepackagename"

    invoke-interface {v8, v9, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_41

    const-string/jumbo v9, "servicepackagesignature"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v9

    if-eqz v9, :cond_5e

    const-string v9, "EnterpriseIdentity"

    const-string v10, "In _setAuthenticationConfig: Incorrect configuration. Both hide and enforce set to true."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "hideEnterpriseIDLock"

    const-string/jumbo v10, "false"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_5e
    const-string/jumbo v9, "hideEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v10

    if-eqz v10, :cond_6b

    const-string/jumbo v10, "true"

    goto :goto_6e

    :cond_6b
    const-string/jumbo v10, "false"

    :goto_6e
    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    const-string/jumbo v9, "forceEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v10

    if-eqz v10, :cond_7e

    const-string/jumbo v10, "true"

    goto :goto_81

    :cond_7e
    const-string/jumbo v10, "false"

    :goto_81
    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "enforceRemoteAuthAlways"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v10

    if-eqz v10, :cond_91

    const-string/jumbo v10, "true"

    goto :goto_94

    :cond_91
    const-string/jumbo v10, "false"

    :goto_94
    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "isConfiguredByMDM"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v10

    if-eqz v10, :cond_a4

    const-string/jumbo v10, "true"

    goto :goto_a7

    :cond_a4
    const-string/jumbo v10, "false"

    :goto_a7
    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig AUTHENTICATOR_PACKAGE_NAME:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "servicepackagename"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig FORCE_ENTERPRISE_IDENTITY_LOCK:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "forceEnterpriseIDLock"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig HIDE_ENTERPRISE_ID_LOCK:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hideEnterpriseIDLock"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig ENFORCE_REMOTE_AUTH_ALWAYS:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "enforceRemoteAuthAlways"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig IS_CONFIGURED_BY_MDM:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "isConfiguredByMDM"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cd

    :cond_13d
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeAll(Lorg/w3c/dom/Node;)V

    move-object v9, v5

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14f

    const-string/jumbo v10, "servicepackagename"

    invoke-interface {v9, v10, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14f
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_163

    const-string/jumbo v10, "servicepackagesignature"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_163
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v10

    if-eqz v10, :cond_180

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v10

    if-eqz v10, :cond_180

    const-string v10, "EnterpriseIdentity"

    const-string v11, "In _setAuthenticationConfig when node not null: Incorrect configuration. Both hide and enforce set to true."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "hideEnterpriseIDLock"

    const-string/jumbo v11, "false"

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_193

    :cond_180
    const-string/jumbo v10, "hideEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v11

    if-eqz v11, :cond_18d

    const-string/jumbo v11, "true"

    goto :goto_190

    :cond_18d
    const-string/jumbo v11, "false"

    :goto_190
    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_193
    const-string/jumbo v10, "forceEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v11

    if-eqz v11, :cond_1a0

    const-string/jumbo v11, "true"

    goto :goto_1a3

    :cond_1a0
    const-string/jumbo v11, "false"

    :goto_1a3
    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "enforceRemoteAuthAlways"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v11

    if-eqz v11, :cond_1b3

    const-string/jumbo v11, "true"

    goto :goto_1b6

    :cond_1b3
    const-string/jumbo v11, "false"

    :goto_1b6
    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "isConfiguredByMDM"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v11

    if-eqz v11, :cond_1c6

    const-string/jumbo v11, "true"

    goto :goto_1c9

    :cond_1c6
    const-string/jumbo v11, "false"

    :goto_1c9
    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_1cd
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v10

    if-nez v10, :cond_275

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1df
    :goto_1df
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_275

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Key = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1df

    sget-object v12, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1df

    sget-object v12, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21a

    goto :goto_1df

    :cond_21a
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_273

    const/4 v12, 0x0

    invoke-direct {v1, v5, v11}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    move-object v12, v13

    if-nez v12, :cond_23e

    iget-object v13, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v13, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    move-object v12, v13

    if-nez v4, :cond_23b

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_23e

    :cond_23b
    invoke-interface {v5, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_23e
    :goto_23e
    const-string/jumbo v13, "value"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v13, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v13, :cond_273

    const-string v13, "EnterpriseIdentity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In _setAuthenticationConfig:  <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "> parameter for - packageName  is added"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_273
    goto/16 :goto_1df

    :cond_275
    if-nez v4, :cond_280

    iget-object v10, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_280
    iget-object v10, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_293

    invoke-direct {v1, v2, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    goto :goto_296

    :cond_293
    invoke-direct {v1, v2, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_296} :catch_297

    :goto_296
    goto :goto_29f

    :catch_297
    move-exception v0

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In setAuthenticationConfig: Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29f
    const/4 v4, 0x0

    move v5, v4

    :try_start_2a1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->provisionResetPasswordToken(I)Z

    move-result v0
    :try_end_2a5
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2a5} :catch_2a7

    move v5, v0

    goto :goto_2bf

    :catch_2a7
    move-exception v0

    move-object v6, v0

    const-string v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while provisioning token. Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2bf
    const-string v0, "EnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Token to reset password provisioned:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_2fd

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2fc

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2fc

    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_2fc

    const-string v7, "EnterpriseIdentity"

    const-string v8, "In _setAuthenticationConfig : file is not removed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2fc
    return v3

    :cond_2fd
    return v4
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    return v0
.end method

.method private bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .registers 10

    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;-><init>(I)V

    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In bindToEnterpriseIdAuthenticator: The EnterpriseIdService is already bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v1

    return-object v1

    :cond_2d
    :try_start_2d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".genericssoconnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_67

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In bindToEnterpriseIdAuthenticator: action is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6a
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_6a} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6a} :catch_b7

    :try_start_6a
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In bindToEnterpriseIdAuthenticator: Binding to the service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3
    :try_end_7d
    .catchall {:try_start_6a .. :try_end_7d} :catchall_b4

    if-eqz v3, :cond_a7

    :try_start_7f
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x4e20

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_a6

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_a6

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In bindToEnterpriseIdAuthenticator: CoutnDownLatch return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_9d} :catch_9e
    .catchall {:try_start_7f .. :try_end_9d} :catchall_b4

    goto :goto_a6

    :catch_9e
    move-exception v3

    :try_start_9f
    const-string v4, "EnterpriseIdentity"

    const-string v5, "In bindToEnterpriseIdAuthenticator: InterruptedException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a6
    :goto_a6
    goto :goto_ae

    :cond_a7
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In bindToEnterpriseIdAuthenticator: Fail to bind to sso service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ae
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_b4

    :try_start_af
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v2
    :try_end_b3
    .catch Ljava/lang/NullPointerException; {:try_start_af .. :try_end_b3} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b3} :catch_b7

    return-object v2

    :catchall_b4
    move-exception v3

    :try_start_b5
    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    :try_start_b6
    throw v3
    :try_end_b7
    .catch Ljava/lang/NullPointerException; {:try_start_b6 .. :try_end_b7} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b7} :catch_b7

    :catch_b7
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In bindToEnterpriseIdAuthenticator: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    :catch_c0
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In bindToEnterpriseIdAuthenticator: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_c9
    const/4 v1, 0x0

    return-object v1
.end method

.method private createSecretKey()Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_20

    const-string v2, "EnterpriseIdentity"

    const-string/jumbo v3, "secret key is created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-object v1
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_117

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_117

    :cond_f
    const/4 v0, 0x0

    :try_start_10
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initKeyStore()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->loadKey(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    instance-of v3, v3, Ljavax/crypto/SecretKey;

    if-nez v3, :cond_2c

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "EnterpriseIdentity"

    const-string v3, "In decrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-object v1

    :cond_2c
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_50

    const-string v4, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In decrypt: Provider is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    if-eqz v3, :cond_a7

    array-length v4, v2

    const/16 v5, 0x10

    sub-int/2addr v4, v5

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    check-cast v7, Ljavax/crypto/SecretKey;

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v2, v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v3, v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, v2, v0, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF_8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_88

    const-string v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In decrypt: Decrypted output is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_a6

    const-string v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In decrypt: the length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    return-object v0

    :cond_a7
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_115

    const-string v0, "EnterpriseIdentity"

    const-string v4, "In decrypt: cipher is null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_b2} :catch_10d
    .catch Ljava/security/KeyStoreException; {:try_start_10 .. :try_end_b2} :catch_104
    .catch Ljava/security/InvalidKeyException; {:try_start_10 .. :try_end_b2} :catch_fb
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_10 .. :try_end_b2} :catch_f2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_10 .. :try_end_b2} :catch_e9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_10 .. :try_end_b2} :catch_e0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_10 .. :try_end_b2} :catch_d7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_b2} :catch_ce
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_10 .. :try_end_b2} :catch_c5
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_b2} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_b2} :catch_b3

    goto :goto_115

    :catch_b3
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_116

    :catch_bc
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: GeneralSecurityException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_c5
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: InvalidAlgorithmParameterException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_ce
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_d7
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: UnrecoverableKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_e0
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: BadPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_e9
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: IllegalBlockSizeException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_f2
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: NoSuchPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_fb
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_104
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: KeyStoreException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    :catch_10d
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: NoSuchAlgorithmException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_115
    :goto_115
    nop

    :goto_116
    return-object v1

    :cond_117
    :goto_117
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_122

    const-string v0, "EnterpriseIdentity"

    const-string v2, "In decrypt: Key alias or token to encrypt is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_122
    return-object v1
.end method

.method private encrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 14

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "EnterpriseIdentity"

    const-string v2, "In encrypt: Key alias to encrypt is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object v1

    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initKeyStore()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->loadKey(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    instance-of v0, v0, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "EnterpriseIdentity"

    const-string v2, "In encrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-object v1

    :cond_2b
    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_60

    const-string v5, "EnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In encrypt: Provider is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    if-eqz v4, :cond_12d

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    check-cast v6, Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    array-length v6, v5

    array-length v7, v0

    add-int/2addr v6, v7

    new-array v6, v6, [B

    array-length v7, v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v5

    array-length v9, v0

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    const-string v9, "UTF_8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v8, :cond_a3

    const-string v8, "EnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In encrypt: Encrypted output "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v8, :cond_c1

    const-string v8, "EnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In encrypt: the length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_13 .. :try_end_c1} :catch_125
    .catch Ljava/security/InvalidKeyException; {:try_start_13 .. :try_end_c1} :catch_11c
    .catch Ljava/security/NoSuchProviderException; {:try_start_13 .. :try_end_c1} :catch_113
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_c1} :catch_10a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_13 .. :try_end_c1} :catch_101
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_c1} :catch_f8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_c1} :catch_ef
    .catch Ljava/security/ProviderException; {:try_start_13 .. :try_end_c1} :catch_e6
    .catch Ljava/security/KeyStoreException; {:try_start_13 .. :try_end_c1} :catch_dd
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_13 .. :try_end_c1} :catch_d4
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_c1} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_c1} :catch_c2

    :cond_c1
    return-object v7

    :catch_c2
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12e

    :catch_cb
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_d4
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: UnrecoverableKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_dd
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: KeyStoreException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_e6
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: ProviderException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_ef
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: BadPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_f8
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: IllegalBlockSizeException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_101
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: NoSuchPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_10a
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: NoSuchAlgorithmException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_113
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: NoSuchProviderException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_11c
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12d

    :catch_125
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: InvalidAlgorithmParameterException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12d
    :goto_12d
    nop

    :goto_12e
    return-object v1
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 7

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_1b

    return-object p1

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "android.permission.sec.MDM_SECURITY"

    const-string v4, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_57

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_57

    :cond_a
    :try_start_a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_36

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_36
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_42} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_44

    return-object v3

    :cond_43
    return-object v0

    :catch_44
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In existedNode: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_4d
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In existedNode: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_56
    return-object v0

    :cond_57
    :goto_57
    return-object v0
.end method

.method static generateRandomBytes(I)[B
    .registers 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAuthConfigFilePath(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In getAuthConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_b
    if-nez v1, :cond_25

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getEnterpriseIdAuthenticationConfig: enterpriseId authenticator is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_25
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2f
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_58

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_41

    goto :goto_55

    :cond_41
    const-string/jumbo v6, "value"

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_55

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_58
    return-object v2
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    if-nez v0, :cond_26

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "EnterpriseIdentity"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;-><init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_26
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    return-object v0
.end method

.method private getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_27

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is initialized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_27} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_27} :catch_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_27} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_27} :catch_28

    :cond_27
    return-object v1

    :catch_28
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: CertificateException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    :catch_31
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: NoSuchAlgorithmException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :catch_3a
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :catch_43
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4b
    :goto_4b
    goto :goto_7e

    :catch_4c
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getInstanceOfKeyStore: KeyStore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initializaiton failed (Android API level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_4b

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: KeyStoreException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :goto_7e
    return-object v0
.end method

.method private declared-synchronized getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "KnoxEIDTokenKey"

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_1e

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getKeyPairFromAndroidKeyStore: Key entry is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    const-string v4, "CN=%s, OU=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "KnoxEIDTokenKey"

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "KnoxEIDTokenKey"

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v6, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v5

    const-string v6, "RSA"

    const-string v7, "AndroidKeyStore"

    invoke-static {v6, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v6}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_9a

    const-string v7, "EnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key entry is generated for token "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    goto :goto_a6

    :cond_9b
    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_a6

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getKeyPairFromAndroidKeyStore: Key entry is available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    :goto_a6
    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_b1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getKeyPairFromAndroidKeyStore: Reading Key entry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    const-string v2, "KnoxEIDTokenKey"

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    new-instance v2, Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_ca
    .catchall {:try_start_1 .. :try_end_ca} :catchall_cc

    monitor-exit p0

    return-object v2

    :catchall_cc
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_5
    sget-boolean v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v3, :cond_1f

    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getPackageCertForPkgname: User id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, p2, v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_39

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_34} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_52
    .catchall {:try_start_5 .. :try_end_34} :catchall_50

    const/4 v5, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_39
    :try_start_39
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3d
    if-ge v7, v6, :cond_4c

    aget-object v8, v5, v7

    if-eqz v8, :cond_49

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_47} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_52
    .catchall {:try_start_39 .. :try_end_47} :catchall_50

    move-object v0, v6

    goto :goto_4c

    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :cond_4c
    :goto_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    :catchall_50
    move-exception v3

    goto :goto_65

    :catch_52
    move-exception v3

    :try_start_53
    const-string v4, "EnterpriseIdentity"

    const-string v5, "In getPackageCertForPkgname: Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    :catch_5b
    move-exception v3

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_50

    goto :goto_4c

    :goto_64
    return-object v0

    :goto_65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getSdpManagerService()Lcom/android/server/SdpManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    return-object v0
.end method

.method private final getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKeyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v0

    return-object v1

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/KnoxEID_SCKF"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5b

    sget-boolean v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v3, :cond_2f

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getSecretKeyFromAndroidKeyStore: Key file does not exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_3e

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In getSecretKeyFromAndroidKeyStore: Wrapping SecretKey"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B

    move-result-object v4

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_4d

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Writing SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    invoke-static {v2, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->writeKeyData(Ljava/io/File;[B)V

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_5b

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Finished writing SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    sget-boolean v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v3, :cond_66

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getSecretKeyFromAndroidKeyStore: Reading SecretKey"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->readKeyData(Ljava/io/File;)[B

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;

    move-result-object v4

    sput-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_7b

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In getSecretKeyFromAndroidKeyStore: Finished reading SecretKey"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v0

    return-object v4

    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method private getUserId()I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_2a

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getUserId: The uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return v1
.end method

.method private initAuthenticationConfigDoc(I)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e9

    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2b

    goto :goto_47

    :cond_2b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7f

    :cond_47
    :goto_47
    const-string v4, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In initAuthenticationConfigDoc: authconfig.xml doesn\'t exist for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", an empty config file is created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string v5, "configuration"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    nop

    :goto_7f
    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_9c

    const-string v4, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is loaded with auth details for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_9c} :catch_ca
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_9c} :catch_bc
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_9c} :catch_ae
    .catchall {:try_start_d .. :try_end_9c} :catchall_ac

    :cond_9c
    if-eqz v0, :cond_ab

    :try_start_9e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_ab

    :catch_a2
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e9

    :cond_ab
    :goto_ab
    goto :goto_e9

    :catchall_ac
    move-exception v2

    goto :goto_d8

    :catch_ae
    move-exception v2

    :try_start_af
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In initAuthenticationConfigDoc: SAXException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_ac

    if-eqz v0, :cond_ab

    :try_start_b8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_a2

    goto :goto_ab

    :catch_bc
    move-exception v2

    :try_start_bd
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In initAuthenticationConfigDoc: ParserConfigurationException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_ac

    if-eqz v0, :cond_ab

    :try_start_c6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_a2

    goto :goto_ab

    :catch_ca
    move-exception v2

    :try_start_cb
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_ac

    if-eqz v0, :cond_ab

    :try_start_d4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_a2

    goto :goto_ab

    :goto_d8
    nop

    if-eqz v0, :cond_e8

    :try_start_db
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_e8

    :catch_df
    move-exception v3

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_e8
    :goto_e8
    throw v2

    :cond_e9
    :goto_e9
    return-void
.end method

.method private initKeyStore()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_c

    const-string v0, "AndroidKeyStore"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    :cond_c
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In initKeyStore: no KeyStore instance is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_1c
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In initKeyStore: Keystore Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    return-void
.end method

.method private isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z
    .registers 7

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x1

    return v3

    :cond_19
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In isAuthenticatorApplicationInstalled: Authenticator is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isNetworkAuthenticationEnforced(I)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "network_auth_force_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    goto :goto_17

    :cond_16
    move v3, v4

    :goto_17
    move v2, v3

    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In isNetworkAuthenticationEnforced: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private loadKey(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In loadKey: SecretKey is already loaded. It\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void

    :cond_2a
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_3a

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_39

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In loadKey: loadkey() failed, because keystore is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void

    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_75

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_75

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_75

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey protected by AndroidKeyStore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private static readKeyData(Ljava/io/File;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In readKeyData: Reading key data from a file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_10
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_19
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_26

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19

    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2e

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private removeAll(Lorg/w3c/dom/Node;)V
    .registers 6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_27
    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v0, v4

    const/4 v4, 0x0

    if-nez p1, :cond_1d

    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    move-object v4, v5

    goto :goto_23

    :cond_1d
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v4, v5

    :goto_23
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In saveConfigToFile: config file is saved successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_4 .. :try_end_35} :catch_5c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_35} :catch_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_35} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_35} :catch_41
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_35} :catch_38
    .catchall {:try_start_4 .. :try_end_35} :catchall_36

    goto :goto_64

    :catchall_36
    move-exception v2

    goto :goto_67

    :catch_38
    move-exception v2

    :try_start_39
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    :catch_41
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :catch_4a
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :catch_53
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :catch_5c
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_64
    nop

    :goto_65
    monitor-exit v1

    return-void

    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_39 .. :try_end_68} :catchall_36

    throw v2
.end method

.method private setNetworkAuthenticationEnforced(ZI)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "network_auth_force_state"

    nop

    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private tokenMigration([BI)J
    .registers 16

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v1, :cond_8c

    if-eqz v0, :cond_8c

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto/16 :goto_8c

    :cond_1a
    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v6

    if-nez v6, :cond_29

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In tokenMigration: Failed due to no legacy token found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    :cond_29
    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrusted(I)[B

    move-result-object v6

    if-nez v6, :cond_37

    const-string v7, "EnterpriseIdentity"

    const-string v8, "In tokenMigration: Failed in legacy token derivation"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :cond_37
    const/4 v7, 0x2

    invoke-virtual {v0, v6, p2, v7}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey([BII)[B

    move-result-object v7

    if-nez v7, :cond_46

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In tokenMigration: Failed in legacy key derivation"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :cond_46
    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v8

    move-wide v2, v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_5b

    const-string v10, "EnterpriseIdentity"

    const-string v11, "In tokenMigration: Failed to add escrow token"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :cond_5b
    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->removeLegacyToken(I)Z

    move-result v10

    if-nez v10, :cond_68

    const-string v10, "EnterpriseIdentity"

    const-string v11, "In tokenMigration: Failed to remove legacy token"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :try_start_68
    invoke-interface {v1, p1, v8, v9, p2}, Lcom/android/internal/widget/ILockSettings;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v11

    if-eqz v11, :cond_7c

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v11

    invoke-virtual {v0, v11, v7, p2}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v11

    if-nez v11, :cond_83

    :cond_7c
    const-string v11, "EnterpriseIdentity"

    const-string v12, "In tokenMigration: Failed in sdp generational shift"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_86} :catch_87

    goto :goto_94

    :catch_87
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_94

    :cond_8c
    :goto_8c
    const-string v6, "EnterpriseIdentity"

    const-string v7, "In tokenMigration: Failed due to invalid parameter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_94
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2
.end method

.method private unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "AES"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method private updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .registers 5

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$300(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In updateCache: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .registers 7

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$300(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In updateCacheAndFile: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_3e

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated authentication config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void
.end method

.method private wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private static writeKeyData(Ljava/io/File;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In writeKeyData: Writing key data to a file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_10
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    nop

    return-void

    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public checkADCExist(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    return v0
.end method

.method public getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .registers 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_24

    const-string v0, "EnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In getAuthenticationConfig: cannot get configDoc for userID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_24
    move/from16 v7, p1

    :try_start_26
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIdpPackageName()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$400(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v6, 0x0

    :cond_35
    move-object v8, v0

    check-cast v8, Lorg/w3c/dom/Element;

    move-object v15, v8

    const-string/jumbo v8, "servicepackagesignature"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: AUTHENTICATOR_PACKAGE_SIGNATURE = null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_56

    :cond_4f
    const-string/jumbo v8, "servicepackagesignature"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_56
    move-object v13, v8

    const-string/jumbo v8, "enforceRemoteAuthAlways"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6d

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: Error to look up. ENFORCE_REMOTE_AUTH_ALWAYS=null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_7b

    :cond_6d
    const-string/jumbo v8, "enforceRemoteAuthAlways"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_7b
    move v12, v8

    const-string/jumbo v8, "forceEnterpriseIDLock"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_92

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: Error to look up. FORCE_ENTERPRISE_IDENTITY_LOCK=null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_a0

    :cond_92
    const-string/jumbo v8, "forceEnterpriseIDLock"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_a0
    move v11, v8

    const-string/jumbo v8, "hideEnterpriseIDLock"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b7

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: Error to look up. HIDE_ENTERPRISE_ID_LOCK=null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_c5

    :cond_b7
    const-string/jumbo v8, "hideEnterpriseIDLock"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_c5
    move v10, v8

    const-string/jumbo v8, "isConfiguredByMDM"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_dc

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: Error to look up. isConfiguredByMDM=null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_ea

    :cond_dc
    const-string/jumbo v8, "isConfiguredByMDM"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_ea
    move v9, v8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v14
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_ef} :catch_13b

    :try_start_ef
    new-instance v2, Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-object v8, v2

    move v5, v9

    move v9, v12

    move/from16 v16, v10

    move v10, v11

    move-object/from16 v17, v0

    move v0, v11

    move/from16 v11, v16

    move v1, v12

    move-object v12, v6

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v3, v2

    const-string v2, "EnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In getAuthenticationConfig: RemoteAuthAlways: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "forceEnterpriseID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "hideEnterpriseID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v16

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "Authenticator: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setConfiguredByMDM(Z)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_137} :catch_138

    return-object v3

    :catch_138
    move-exception v0

    move-object v2, v14

    goto :goto_13c

    :catch_13b
    move-exception v0

    :goto_13c
    const-string v1, "EnterpriseIdentity"

    const-string v5, "In getAuthenticationConfig: Exception"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v1

    return-object v1
.end method

.method public getEnterpriseIdAuthenticator(I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    if-eqz v0, :cond_b

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIdpPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$400(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_19

    goto :goto_21

    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    if-nez p1, :cond_30

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In isNetworkAuthenticationEnforced: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    return v0

    :cond_30
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v1

    return v1
.end method

.method public onAdminRemoved(I)V
    .registers 10

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In OnAdminRemoved: uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_38

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In OnAdminRemoved: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_ba

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne p1, v2, :cond_b9

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In OnAdminRemoved: Correct admin = all config is removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_8e
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_97
    if-nez v0, :cond_b9

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_b9

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_b9

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In onAdminRemoved : file is not removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    return-void

    :cond_ba
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need to be system process"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 15

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_c4

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    if-nez p2, :cond_2b

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In performUserAuthentication: Performing user authentication is failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2b
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_60

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_52

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In performUserAuthentication: Authenticator signature is not matched"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    new-instance v4, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v4}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    move-object v0, v4

    sget-object v4, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    const/16 v5, -0xd

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Ljava/lang/String;I)V

    return-object v0

    :cond_60
    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_6b

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In performUserAuthentication: calling _setAuthenticationConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_8d

    const-string v5, "EnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In performUserAuthentication: The authenticator is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_8d
    :try_start_8d
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    :cond_9a
    new-instance v5, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v6
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_af} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_af} :catch_b1

    move-object v0, v6

    :goto_b0
    goto :goto_c3

    :catch_b1
    move-exception v5

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In performUserAuthentication: Exception"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c3

    :catch_ba
    move-exception v5

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In performUserAuthentication: RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b0

    :goto_c3
    return-object v0

    :cond_c4
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public provisionResetPasswordToken(I)Z
    .registers 15

    const-wide/16 v0, 0x0

    const/16 v2, 0x20

    new-array v3, v2, [B

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-string/jumbo v9, "password_token_handle"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_65

    const-string v9, "EnterpriseIdentity"

    const-string v12, "In provisionResetPasswordToken: EID_PASSWORD_TOKEN_HANDLE = null in XML"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->generateRandomBytes(I)[B

    move-result-object v3

    const-string/jumbo v2, "password_token"

    const-string/jumbo v9, "password_token_key"

    invoke-direct {p0, v9, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->tokenMigration([BI)J

    move-result-wide v0

    goto :goto_57

    :cond_51
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v0

    :goto_57
    const-string/jumbo v2, "password_token_handle"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    goto :goto_a5

    :cond_65
    const-string/jumbo v9, "password_token_handle"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v9

    if-nez v9, :cond_a5

    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->generateRandomBytes(I)[B

    move-result-object v3

    const-string/jumbo v2, "password_token"

    const-string/jumbo v9, "password_token_key"

    invoke-direct {p0, v9, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v0, v10

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    :cond_92
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v0

    const-string/jumbo v2, "password_token_handle"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    :cond_a5
    :goto_a5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    cmp-long v2, v0, v10

    if-eqz v2, :cond_ae

    const/4 v2, 0x1

    goto :goto_af

    :cond_ae
    const/4 v2, 0x0

    :goto_af
    return v2
.end method

.method public resetPasswordByToken(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 18

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_79

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x20

    new-array v4, v4, [B

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v11

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;
    invoke-static {v11}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lorg/w3c/dom/Element;

    const-string/jumbo v5, "password_token_handle"

    invoke-interface {v13, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_39

    const-string v5, "EnterpriseIdentity"

    const-string v7, "In resetPasswordByToken: EID_PASSWORD_TOKEN_HANDLE = null in XML.Need to provision token"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_39
    const-string/jumbo v5, "password_token_handle"

    invoke-interface {v13, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string/jumbo v2, "password_token"

    invoke-interface {v13, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In resetPasswordByToken: EID_PASSWORD_TOKEN = null in XML."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_59
    const-string/jumbo v2, "password_token_key"

    const-string/jumbo v3, "password_token"

    invoke-interface {v13, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->decrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_6a

    return v6

    :cond_6a
    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-wide v7, v14

    move-object v9, v2

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredentialWithToken(Ljava/lang/String;IIJ[BI)Z

    move-result v3

    return v3

    :cond_79
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have KnoxCore uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "EnterpriseIdentity"

    const-string v2, "Enterprise Identity not supported on device level "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    return v1

    :cond_1e
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    const-string/jumbo v3, "is_from_knox_core"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    move v2, v4

    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setAuthenticationConfig: skipInstalledStatusCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    if-nez v2, :cond_7c

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_58

    const-string v3, "com.sec.android.service.singlesignon"

    :cond_58
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_60

    const/4 v4, -0x4

    return v4

    :cond_60
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_7c

    if-eqz v5, :cond_7c

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7c

    const-string v6, "EnterpriseIdentity"

    const-string v7, "Enterprise Identity requested signature is different from IdP signature"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0xd

    return v6

    :cond_7c
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v3

    return v3
.end method

.method public setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_11

    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_53

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_2b

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setUpdatedAuthenticationConfig : UserID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v1, 0x0

    :try_start_2c
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V

    :cond_35
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_3b

    nop

    const/4 v1, 0x1

    return v1

    :catch_3b
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setUpdatedAuthenticationConfig : exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_53
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_19

    goto :goto_21

    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    if-nez p1, :cond_2f

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In validateUserAuthentication: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void

    :cond_2f
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_52

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateUserAuthentication: contextInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_98

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    goto :goto_98

    :cond_5f
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_71

    sget-object v2, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v8

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v0, v3, Landroid/os/Message;->arg1:I

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    return-void

    :cond_98
    :goto_98
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In validateUserAuthentication: Usernames or password is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_19

    goto :goto_21

    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_31

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_30

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In verifyUserAuthentication: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-object v1

    :cond_31
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_94

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_94

    :cond_3e
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_59

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v10, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    new-instance v11, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, v9

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-direct {p0, v2, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v4

    if-nez v4, :cond_72

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In verifyUserAuthentication: The authenticator value is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_72
    :try_start_72
    invoke-interface {v4, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_8a

    nop

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v5, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8a

    const/4 v5, 0x0

    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_8a} :catch_8b

    :cond_8a
    goto :goto_93

    :catch_8b
    move-exception v1

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In performExchangeAuthentication: RemoteException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_93
    return-object v0

    :cond_94
    :goto_94
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In verifyUserAuthentication: Usernames or password is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
