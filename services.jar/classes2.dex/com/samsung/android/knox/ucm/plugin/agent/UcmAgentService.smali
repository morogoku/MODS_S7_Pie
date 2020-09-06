.class public abstract Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;
.super Landroid/app/Service;
.source "UcmAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;
    }
.end annotation


# static fields
.field public static final ACTION_UCM_PLUGIN_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_PLUGIN_STATUS"

.field public static final ADMIN_UID:Ljava/lang/String; = "adminUid"

.field public static final AID:Ljava/lang/String; = "aid"

.field public static final ALIASES:Ljava/lang/String; = "aliases"

.field public static final ALLOWED_PACKAGES:Ljava/lang/String; = "allowed_packages"

.field public static final ALLOW_ALL:I = 0x1

.field public static final API_FAILED:I = -0x1

.field public static final API_RESULT:Ljava/lang/String; = "api_result"

.field public static final API_SUCCESS:I = 0x0

.field public static final AUTH_ALPHA_NUMERIC:I = 0x1

.field public static final AUTH_MAX_COUNT:Ljava/lang/String; = "maxAuthCnt"

.field public static final AUTH_MODE:Ljava/lang/String; = "authMode"

.field public static final AUTH_NUMERIC:I = 0x0

.field public static final AUTH_UNKNOWN:I = -0x1

.field public static final BLOCK_ALL:I = 0x2

.field public static final BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_APPLET_INSTALLATION_STATUS:Ljava/lang/String; = "applet_installation_status"

.field public static final BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final CS_NAME:Ljava/lang/String; = "csName"

.field public static final ERROR_ALIAS_NOT_FOUND:I = 0x11

.field public static final ERROR_APDU_CREATION:I = 0x1000100

.field public static final ERROR_APPLET_INSTALLATION:I = 0x9000000

.field public static final ERROR_APPLET_INSTALL_LOCATION:I = 0x19

.field public static final ERROR_APPLET_MAX_ERROR_CODE:I = 0x8010000

.field public static final ERROR_APPLET_UNKNOWN:I = 0x8000000

.field public static final ERROR_BAD_APPLET_RESPONSE:I = 0x1000200

.field public static final ERROR_BAD_PADDING_EXCEPTION:I = 0x10b

.field public static final ERROR_CANNOT_CHANGE_ODE_CONFIGURATION:I = 0xc000300

.field public static final ERROR_CERTFACTORY_INSTANCE_NOT_FOUND:I = 0xc

.field public static final ERROR_CERTIFICATE_ENCODING_EXCEPTION:I = 0x106

.field public static final ERROR_CERTIFICATE_EXCEPTION:I = 0x105

.field public static final ERROR_CIPHER_INSTANCE_NOT_FOUND:I = 0xb

.field public static final ERROR_CORRUPTED_CS_RESPONSE:I = 0x17

.field public static final ERROR_CREDENTIAL_STORAGE_ACCESS_DENIED_BY_ADMIN_POLICY:I = 0xf

.field public static final ERROR_CRYPTO_ENGINE_EXCEPTION:I = 0x101

.field public static final ERROR_EMPTY_CERTIFICATE_CHAIN:I = 0x9

.field public static final ERROR_EMPTY_PARAMETER:I = 0x10

.field public static final ERROR_ESECOMM_TRANSMIT_FAILURE:I = 0x15

.field public static final ERROR_FAILED_TO_GET_READER_FOR_STORAGE:I = 0x2000502

.field public static final ERROR_FILE_NOT_FOUND_EXCEPTION:I = 0x10e

.field public static final ERROR_GET_READERS_ILLEGAL_STATE_EXCEPTION:I = 0x2000102

.field public static final ERROR_GET_READERS_NULL_POINTER_EXCEPTION:I = 0x2000101

.field public static final ERROR_ILLEGAL_BLOCK_SIZE_EXCEPTION:I = 0x10c

.field public static final ERROR_INCORRECT_CARD:I = 0x24

.field public static final ERROR_INCORRECT_PIN:I = 0x20

.field public static final ERROR_INCORRECT_PUK:I = 0x21

.field public static final ERROR_INTERNAL_COMMUNICATION:I = 0x1000400

.field public static final ERROR_INTERNAL_UCM_FRMWK_END:I = 0x1fff

.field public static final ERROR_INTERNAL_UCM_FRMWK_START:I = 0x1000

.field public static final ERROR_INVALID_ALGORTHM_PARAMETER_EXCEPTION:I = 0x103

.field public static final ERROR_INVALID_INPUT:I = 0x4

.field public static final ERROR_INVALID_KEY_SPEC_EXCEPTION:I = 0x107

.field public static final ERROR_INVALID_ODE_CONFIGURATION:I = 0xc000200

.field public static final ERROR_IO_EXCEPTION:I = 0x10d

.field public static final ERROR_KEYSTORE_ENTRY_NOT_FOUND:I = 0x8

.field public static final ERROR_KEYSTORE_EXCEPTION:I = 0x10a

.field public static final ERROR_KEYSTORE_TYPE:I = 0x7

.field public static final ERROR_MISSING_DEPENDENCY:I = 0x25

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NON_UCS_PLUGINSPI:I = 0x13

.field public static final ERROR_NO_ADAPTER_FOUND:I = 0x18

.field public static final ERROR_NO_ADAPTER_RESPONSE:I = 0x14

.field public static final ERROR_NO_PLUGIN_AGENT_FOUND:I = 0xe

.field public static final ERROR_NO_PLUGIN_RESPONSE:I = 0xd

.field public static final ERROR_NO_SESSION_AVAILABLE:I = 0x2000501

.field public static final ERROR_NO_SUCH_ALGORITHM_EXCEPTION:I = 0x102

.field public static final ERROR_NO_SUCH_PROVIDER_EXCEPTION:I = 0x108

.field public static final ERROR_OMA_TRANSMIT_FAILURE:I = 0x16

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2000303

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_ILLEGAL_STATE_EXCEPTION:I = 0x2000302

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_IO_EXCEPTION:I = 0x2000301

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_NO_SUCH_ELEMENT_EXCEPTION:I = 0x2000305

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_SECURITY_EXCEPTION:I = 0x2000304

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_UNKNOWN:I = 0x2000306

.field public static final ERROR_OPEN_SESSION_IO_EXCEPTION:I = 0x2000201

.field public static final ERROR_OUT_OF_BOUND:I = 0x6

.field public static final ERROR_PLUGIN_ALREADY_USED:I = 0x22

.field public static final ERROR_PRIVATEKEY_ENTRY_NOT_FOUND:I = 0xa

.field public static final ERROR_SCP_CREATE_CHANNEL_FAILED:I = 0x3000003

.field public static final ERROR_SCP_DECRYPTION_FAILED:I = 0x3000002

.field public static final ERROR_SCP_ENCRYPTION_FAILED:I = 0x3000001

.field public static final ERROR_SCP_NULL_RESPONSE_RECV:I = 0x3000004

.field public static final ERROR_SCP_UNKNOWN:I = 0x3000000

.field public static final ERROR_SHORT_BUFFER_EXCEPTION:I = 0x104

.field public static final ERROR_SMARTCARD_UNAVAILABLE:I = 0x1000300

.field public static final ERROR_STORAGE_FULL:I = 0x5

.field public static final ERROR_TRANSMIT_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2000403

.field public static final ERROR_TRANSMIT_ILLEGAL_STATE_EXCEPTION:I = 0x2000402

.field public static final ERROR_TRANSMIT_IO_EXCEPTION:I = 0x2000401

.field public static final ERROR_TRANSMIT_NULL_POINTER_EXCEPTION:I = 0x2000405

.field public static final ERROR_TRANSMIT_SECURITY_EXCEPTION:I = 0x2000404

.field public static final ERROR_TRANSMIT_UNKNOWN:I = 0x2000406

.field public static final ERROR_UNDEFINED_EXCEPTION:I = 0x10f

.field public static final ERROR_UNKNOWN:I = 0x12

.field public static final ERROR_UNREADABLE_ODE_CONFIGURATION:I = 0xc000100

.field public static final ERROR_UNRECOVERABLE_KEY_EXCEPTION:I = 0x109

.field public static final ERROR_UNRECOVERABLE_STATE:I = 0x23

.field public static final ERROR_UNSUPPORTED_ALGORITHM:I = 0x2

.field public static final ERROR_UNSUPPORTED_OPERATION:I = 0x3

.field public static final ERROR_UNSUPPORTED_PARAMETER:I = 0x1

.field public static final EVENT_ADMIN_LICENSE_EXPIRED:I = 0xd

.field public static final EVENT_ADMIN_LICENSE_RENEWED:I = 0xe

.field public static final EVENT_BOOT_COMPLETED:I = 0x11

.field public static final EVENT_CONTAINER_LOCKED:I = 0x14

.field public static final EVENT_CONTAINER_UNLOCKED:I = 0x15

.field public static final EVENT_DEVICE_LOCKED:I = 0xf

.field public static final EVENT_DEVICE_UNLOCKED:I = 0x10

.field public static final EVENT_FACTORY_RESET:I = 0x65

.field public static final EVENT_KEYGUARD_SET:I = 0x12

.field public static final EVENT_KEYGUARD_UNSET:I = 0x13

.field public static final EVENT_PACKAGE_UNINSTALL:I = 0xc

.field public static final EVENT_PLUGIN_UNMANAGED:I = 0xa

.field public static final EVENT_USER_REMOVED:I = 0xb

.field public static final LOCK_STATE:Ljava/lang/String; = "state"

.field public static final MAX_PIN_LENGTH:Ljava/lang/String; = "maxPinLength"

.field public static final MAX_PUK_LENGTH:Ljava/lang/String; = "maxPukLength"

.field public static final MIN_PIN_LENGTH:Ljava/lang/String; = "minPinLength"

.field public static final MIN_PUK_LENGTH:Ljava/lang/String; = "minPukLength"

.field public static final MISC_INFO:Ljava/lang/String; = "miscInfo"

.field public static final PACKAGE_ACCESS_TYPE:Ljava/lang/String; = "package_access_type"

.field public static final PACKAGE_UID:Ljava/lang/String; = "packageUid"

.field public static final PARTIALLY:I = 0x3

.field public static final PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final PIN_CACHE_TIMEOUT:I = 0x1

.field public static final PLUGIN_BOOLEAN_RESPONSE:Ljava/lang/String; = "booleanresponse"

.field public static final PLUGIN_BUNDLE_RESPONSE:Ljava/lang/String; = "bundleresponse"

.field public static final PLUGIN_BYTEARRAY_RESPONSE:Ljava/lang/String; = "bytearrayresponse"

.field public static final PLUGIN_ERROR_CODE:Ljava/lang/String; = "errorresponse"

.field public static final PLUGIN_INT_RESPONSE:Ljava/lang/String; = "intresponse"

.field public static final PLUGIN_STRINGARRAY_RESPONSE:Ljava/lang/String; = "stringarrayresponse"

.field public static final PLUGIN_STRING_RESPONSE:Ljava/lang/String; = "stringresponse"

.field public static final REMAIN_COUNT:Ljava/lang/String; = "remainCnt"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final SCP_TYPE:Ljava/lang/String; = "scptype"

.field public static final STATE_BLOCKED:I = 0x85

.field public static final STATE_LOCKED:I = 0x84

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNLOCKED:I = 0x83

.field public static final STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final STORAGE_TYPE:Ljava/lang/String; = "storagetype"

.field public static final SUPPORTS_ODE:Ljava/lang/String; = "supportsode"

.field private static final TAG:Ljava/lang/String; = "UcmAgentService"

.field public static final USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field private err_code:I

.field private mProvider:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->err_code:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->encrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->decrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->deleteKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[B[BLcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateKeyPair(Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateSecureRandom(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private final decrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 15

    const-string v0, "UcmAgentService"

    const-string v1, "decrypt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p3, :cond_24

    const-string v2, "UcmAgentService"

    const-string/jumbo v3, "property is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_24
    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callerUid"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7b

    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    const/4 v2, 0x2

    :try_start_7c
    const-string v3, "KNOX"

    iget-object v4, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v3, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v3

    if-nez v3, :cond_99

    const-string v4, "UcmAgentService"

    const-string v5, "Cannot getting Keystore Instance"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bytearrayresponse"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v4, "errorresponse"

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_99
    invoke-virtual {v3, p3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v5, "ownerUid"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "resource"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "extraArgs"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    if-nez v5, :cond_dd

    const-string v6, "UcmAgentService"

    const-string v7, "getEntry null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "bytearrayresponse"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v6

    if-nez v6, :cond_d3

    const/16 v6, 0x8

    goto :goto_d7

    :cond_d3
    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v6

    :goto_d7
    const-string v7, "errorresponse"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_dd
    move-object v6, v5

    check-cast v6, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v6}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    if-nez v6, :cond_105

    const-string v7, "UcmAgentService"

    const-string v8, "getPrivateKey null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "bytearrayresponse"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v7

    if-nez v7, :cond_fb

    const/16 v7, 0xa

    goto :goto_ff

    :cond_fb
    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v7

    :goto_ff
    const-string v8, "errorresponse"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_105
    const-string v7, "RSA/ECB/PKCS1Padding"

    iget-object v8, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v7, v8}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Cipher;

    move-result-object v7

    if-nez v7, :cond_121

    const-string v8, "UcmAgentService"

    const-string v9, "Cipher instance null "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "bytearrayresponse"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v8, "errorresponse"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_121
    invoke-virtual {v7, p3}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {v7, v2, v6}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/PrivateKey;)V

    invoke-virtual {v7, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object v8

    const-string v9, "bytearrayresponse"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v9, "errorresponse"

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getErrorStatus()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_139
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7c .. :try_end_139} :catch_1b0
    .catch Ljava/security/InvalidKeyException; {:try_start_7c .. :try_end_139} :catch_1a4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_7c .. :try_end_139} :catch_198
    .catch Ljava/security/KeyStoreException; {:try_start_7c .. :try_end_139} :catch_18c
    .catch Ljava/security/cert/CertificateException; {:try_start_7c .. :try_end_139} :catch_180
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_139} :catch_174
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7c .. :try_end_139} :catch_168
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7c .. :try_end_139} :catch_15c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_139} :catch_150
    .catch Ljava/lang/NullPointerException; {:try_start_7c .. :try_end_139} :catch_146
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7c .. :try_end_139} :catch_13a

    return-object v0

    :catch_13a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1ba

    :catch_146
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_150
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x108

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_15c
    move-exception v2

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_168
    move-exception v2

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10b

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_174
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10d

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_180
    move-exception v2

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x105

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_18c
    move-exception v2

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10a

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_198
    move-exception v2

    invoke-virtual {v2}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x109

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_1a4
    move-exception v2

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x107

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b9

    :catch_1b0
    move-exception v3

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1b9
    nop

    :goto_1ba
    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private final deleteKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    const-string v0, "UcmAgentService"

    const-string v1, "deleteKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_24

    const-string v2, "UcmAgentService"

    const-string/jumbo v3, "property is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_24
    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callerUid"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x10a

    const/4 v3, 0x2

    :try_start_65
    const-string v4, "KNOX"

    iget-object v5, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v4, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v4

    if-nez v4, :cond_7b

    const-string v5, "errorresponse"

    const/4 v6, 0x7

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "booleanresponse"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_7b
    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v6, "ownerUid"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "resource"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "extraArgs"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const-string v6, "booleanresponse"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "errorresponse"

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "UcmAgentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UCMERRORTESTING: @UcmAgentService responding to deleteKey with error code ks.getErrorStatus() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/security/KeyStoreException; {:try_start_65 .. :try_end_c6} :catch_108
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_65 .. :try_end_c6} :catch_fe
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_c6} :catch_f2
    .catch Ljava/security/cert/CertificateException; {:try_start_65 .. :try_end_c6} :catch_e8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_c6} :catch_dc
    .catch Ljava/lang/NullPointerException; {:try_start_65 .. :try_end_c6} :catch_d2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_65 .. :try_end_c6} :catch_c7

    return-object v0

    :catch_c7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_112

    :catch_d2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_111

    :catch_dc
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x108

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_111

    :catch_e8
    move-exception v3

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_111

    :catch_f2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10d

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_111

    :catch_fe
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_111

    :catch_108
    move-exception v3

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_111
    nop

    :goto_112
    const-string v2, "booleanresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "UcmAgentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @UcmAgentService responding to deleteKey with EXCEPTION error code  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private final encrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 15

    const-string v0, "UcmAgentService"

    const-string v1, "encrypt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p3, :cond_24

    const-string v2, "UcmAgentService"

    const-string/jumbo v3, "property is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_24
    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callerUid"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7b

    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    const/4 v2, 0x2

    :try_start_7c
    const-string v3, "KNOX"

    iget-object v4, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v3, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v3

    if-nez v3, :cond_99

    const-string v4, "UcmAgentService"

    const-string v5, "Cannot get Keystore Instance"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bytearrayresponse"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v4, "errorresponse"

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_99
    invoke-virtual {v3, p3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v5, "ownerUid"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "resource"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "extraArgs"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    if-nez v5, :cond_dd

    const-string v6, "UcmAgentService"

    const-string v7, "getEntry null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "bytearrayresponse"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v6

    if-nez v6, :cond_d3

    const/16 v6, 0x8

    goto :goto_d7

    :cond_d3
    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v6

    :goto_d7
    const-string v7, "errorresponse"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_dd
    move-object v6, v5

    check-cast v6, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v6}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    if-nez v6, :cond_105

    const-string v7, "UcmAgentService"

    const-string v8, "getPrivateKey null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "bytearrayresponse"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v7

    if-nez v7, :cond_fb

    const/16 v7, 0xa

    goto :goto_ff

    :cond_fb
    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v7

    :goto_ff
    const-string v8, "errorresponse"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_105
    const-string v7, "RSA/ECB/PKCS1Padding"

    iget-object v8, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v7, v8}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Cipher;

    move-result-object v7

    if-nez v7, :cond_121

    const-string v8, "UcmAgentService"

    const-string v9, "Cipher instance null "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "bytearrayresponse"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v8, "errorresponse"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_121
    invoke-virtual {v7, p3}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/PrivateKey;)V

    invoke-virtual {v7, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object v8

    const-string v9, "bytearrayresponse"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v9, "errorresponse"

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getErrorStatus()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_13a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7c .. :try_end_13a} :catch_1b1
    .catch Ljava/security/InvalidKeyException; {:try_start_7c .. :try_end_13a} :catch_1a5
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_7c .. :try_end_13a} :catch_199
    .catch Ljava/security/KeyStoreException; {:try_start_7c .. :try_end_13a} :catch_18d
    .catch Ljava/security/cert/CertificateException; {:try_start_7c .. :try_end_13a} :catch_181
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_13a} :catch_175
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7c .. :try_end_13a} :catch_169
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7c .. :try_end_13a} :catch_15d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_13a} :catch_151
    .catch Ljava/lang/NullPointerException; {:try_start_7c .. :try_end_13a} :catch_147
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7c .. :try_end_13a} :catch_13b

    return-object v0

    :catch_13b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1bb

    :catch_147
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_151
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x108

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_15d
    move-exception v2

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_169
    move-exception v2

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10b

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_175
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10d

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_181
    move-exception v2

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x105

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_18d
    move-exception v2

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10a

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_199
    move-exception v2

    invoke-virtual {v2}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x109

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_1a5
    move-exception v2

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x107

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1ba

    :catch_1b1
    move-exception v3

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1ba
    nop

    :goto_1bb
    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private final generateKeyPair(Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    const-string v0, "UcmAgentService"

    const-string v1, "generateKeyPair"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_24

    const-string v1, "UcmAgentService"

    const-string/jumbo v2, "property is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "booleanresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_24
    const-string v1, "UcmAgentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateKeyPair "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "callerUid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "UcmAgentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x103

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_6a
    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v4, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;

    move-result-object v4

    if-nez v4, :cond_81

    const-string v5, "errorresponse"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "bytearrayresponse"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0

    :cond_81
    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;)V

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_93

    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v7

    move-object v6, v7

    :cond_93
    if-nez v6, :cond_a0

    const-string v7, "errorresponse"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "bytearrayresponse"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0

    :cond_a0
    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "bytearrayresponse"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v8, "errorresponse"

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->getErrorStatus()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_b2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6a .. :try_end_b2} :catch_de
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6a .. :try_end_b2} :catch_d4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_b2} :catch_c8
    .catch Ljava/lang/NullPointerException; {:try_start_6a .. :try_end_b2} :catch_be
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6a .. :try_end_b2} :catch_b3

    return-object v0

    :catch_b3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v2, "errorresponse"

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_e8

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_e7

    :catch_c8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v2, "errorresponse"

    const/16 v4, 0x108

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_e7

    :catch_d4
    move-exception v2

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_e7

    :catch_de
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_e7
    nop

    :goto_e8
    const-string v1, "bytearrayresponse"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private final generateSecureRandom(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    const-string v0, "UcmAgentService"

    const-string v1, "generateSecureRandom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_1c

    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1c
    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateSecureRandom "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callerUid"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    :try_start_5b
    const-string v3, "SHA1PRNG"

    iget-object v4, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v3, v4}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;

    move-result-object v3

    if-nez v3, :cond_70

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "bytearrayresponse"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0

    :cond_70
    invoke-virtual {v3, p2}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->generateSeed(I)[B

    move-result-object v4

    const-string v5, "bytearrayresponse"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v5, "errorresponse"

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->getErrorStatus()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_85
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5b .. :try_end_85} :catch_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_85} :catch_9b
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_85} :catch_91
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5b .. :try_end_85} :catch_86

    return-object v0

    :catch_86
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b1

    :catch_91
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b0

    :catch_9b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x108

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b0

    :catch_a7
    move-exception v3

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_b0
    nop

    :goto_b1
    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private final getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    const-string v0, "UcmAgentService"

    const-string v1, "getCertificateChain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_24

    const-string v2, "UcmAgentService"

    const-string/jumbo v3, "property is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_24
    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCertificateChain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callerUid"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_62
    const-string v2, "KNOX"

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v2, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v2

    if-nez v2, :cond_7f

    const-string v3, "UcmAgentService"

    const-string v4, "Cannot get Keystore Instance"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "bytearrayresponse"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "errorresponse"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_7f
    invoke-virtual {v2, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v4, "ownerUid"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "resource"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "extraArgs"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    if-eqz v4, :cond_d0

    array-length v5, v4

    if-nez v5, :cond_a8

    goto :goto_d0

    :cond_a8
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v6, v4

    const/4 v7, 0x0

    :goto_af
    if-ge v7, v6, :cond_bd

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_af

    :cond_bd
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "bytearrayresponse"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v7, "errorresponse"

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_d0
    :goto_d0
    const-string v5, "UcmAgentService"

    const-string v6, "getCertificateChain empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bytearrayresponse"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v5, "errorresponse"

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_e5
    .catch Ljava/security/KeyStoreException; {:try_start_62 .. :try_end_e5} :catch_120
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_62 .. :try_end_e5} :catch_114
    .catch Ljava/security/cert/CertificateException; {:try_start_62 .. :try_end_e5} :catch_108
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_62 .. :try_end_e5} :catch_fd
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_e5} :catch_f1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_62 .. :try_end_e5} :catch_e6

    return-object v0

    :catch_e6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12c

    :catch_f1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10d

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12b

    :catch_fd
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12b

    :catch_108
    move-exception v2

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x105

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12b

    :catch_114
    move-exception v2

    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x106

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12b

    :catch_120
    move-exception v2

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10a

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_12b
    nop

    :goto_12c
    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private final importKeyPair(Ljava/lang/String;[B[BLcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const-string v0, "UcmAgentService"

    const-string v4, "importKeyPair"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    const/4 v0, 0x0

    if-nez v3, :cond_2b

    const-string v5, "UcmAgentService"

    const-string/jumbo v6, "property is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bytearrayresponse"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    :cond_2b
    const-string v5, "UcmAgentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "importKeyPair "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "callerUid"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "UcmAgentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_6a
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    if-nez v7, :cond_86

    const-string v0, "UcmAgentService"

    const-string v8, "Cannot getting certFactory Instance"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "errorresponse"

    const/16 v8, 0xc

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "booleanresponse"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v4

    :cond_86
    new-instance v8, Ljava/io/ByteArrayInputStream;
    :try_end_88
    .catch Ljava/security/KeyStoreException; {:try_start_6a .. :try_end_88} :catch_213
    .catch Ljava/security/cert/CertificateException; {:try_start_6a .. :try_end_88} :catch_201
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6a .. :try_end_88} :catch_1f0
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_88} :catch_1de
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_6a .. :try_end_88} :catch_1cc
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6a .. :try_end_88} :catch_1ba
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_88} :catch_1a7
    .catch Ljava/lang/NullPointerException; {:try_start_6a .. :try_end_88} :catch_195
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6a .. :try_end_88} :catch_183

    move-object/from16 v9, p3

    :try_start_8a
    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/security/cert/Certificate;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/security/cert/Certificate;

    const-string v12, "KNOX"
    :try_end_a1
    .catch Ljava/security/KeyStoreException; {:try_start_8a .. :try_end_a1} :catch_17e
    .catch Ljava/security/cert/CertificateException; {:try_start_8a .. :try_end_a1} :catch_179
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8a .. :try_end_a1} :catch_174
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a1} :catch_16f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_8a .. :try_end_a1} :catch_16a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_8a .. :try_end_a1} :catch_166
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_a1} :catch_162
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_a1} :catch_15e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8a .. :try_end_a1} :catch_15a

    move-object/from16 v13, p0

    :try_start_a3
    iget-object v14, v13, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v12, v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v12

    if-nez v12, :cond_b7

    const-string v0, "errorresponse"

    const/4 v14, 0x7

    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "booleanresponse"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v4

    :cond_b7
    invoke-virtual {v12, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v14, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v15, "ownerUid"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v6, "resource"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v5, "extraArgs"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v14, v15, v6, v5}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    move-object v5, v14

    invoke-virtual {v12, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    if-eqz v2, :cond_ea

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v14

    move-object v0, v14

    goto :goto_f0

    :cond_ea
    invoke-virtual {v12, v1, v0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    :goto_f0
    new-instance v6, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {v6, v0, v11}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    :try_end_f5
    .catch Ljava/security/KeyStoreException; {:try_start_a3 .. :try_end_f5} :catch_157
    .catch Ljava/security/cert/CertificateException; {:try_start_a3 .. :try_end_f5} :catch_154
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a3 .. :try_end_f5} :catch_151
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_f5} :catch_14e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a3 .. :try_end_f5} :catch_14b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_a3 .. :try_end_f5} :catch_148
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a3 .. :try_end_f5} :catch_145
    .catch Ljava/lang/NullPointerException; {:try_start_a3 .. :try_end_f5} :catch_143
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a3 .. :try_end_f5} :catch_141

    move-object/from16 v14, p4

    :try_start_f7
    invoke-virtual {v12, v1, v6, v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    const-string v15, "booleanresponse"

    move-object/from16 v16, v0

    const/4 v0, 0x1

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    invoke-virtual {v12}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v15

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "UcmAgentService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCMERRORTESTING: @UcmAgentService responding to importKeyPair with error code ks.getErrorStatus() = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catch Ljava/security/KeyStoreException; {:try_start_f7 .. :try_end_125} :catch_13e
    .catch Ljava/security/cert/CertificateException; {:try_start_f7 .. :try_end_125} :catch_13b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f7 .. :try_end_125} :catch_138
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_125} :catch_135
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_f7 .. :try_end_125} :catch_132
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_f7 .. :try_end_125} :catch_12f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f7 .. :try_end_125} :catch_12c
    .catch Ljava/lang/NullPointerException; {:try_start_f7 .. :try_end_125} :catch_129
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f7 .. :try_end_125} :catch_126

    return-object v4

    :catch_126
    move-exception v0

    goto/16 :goto_18a

    :catch_129
    move-exception v0

    goto/16 :goto_19c

    :catch_12c
    move-exception v0

    goto/16 :goto_1ae

    :catch_12f
    move-exception v0

    goto/16 :goto_1c1

    :catch_132
    move-exception v0

    goto/16 :goto_1d3

    :catch_135
    move-exception v0

    goto/16 :goto_1e5

    :catch_138
    move-exception v0

    goto/16 :goto_1f7

    :catch_13b
    move-exception v0

    goto/16 :goto_208

    :catch_13e
    move-exception v0

    goto/16 :goto_21a

    :catch_141
    move-exception v0

    goto :goto_188

    :catch_143
    move-exception v0

    goto :goto_19a

    :catch_145
    move-exception v0

    goto/16 :goto_1ac

    :catch_148
    move-exception v0

    goto/16 :goto_1bf

    :catch_14b
    move-exception v0

    goto/16 :goto_1d1

    :catch_14e
    move-exception v0

    goto/16 :goto_1e3

    :catch_151
    move-exception v0

    goto/16 :goto_1f5

    :catch_154
    move-exception v0

    goto/16 :goto_206

    :catch_157
    move-exception v0

    goto/16 :goto_218

    :catch_15a
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_188

    :catch_15e
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_19a

    :catch_162
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_1ac

    :catch_166
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_1bf

    :catch_16a
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_1d1

    :catch_16f
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_1e3

    :catch_174
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_1f5

    :catch_179
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_206

    :catch_17e
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_218

    :catch_183
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_188
    move-object/from16 v14, p4

    :goto_18a
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_225

    :catch_195
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_19a
    move-object/from16 v14, p4

    :goto_19c
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_224

    :catch_1a7
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_1ac
    move-object/from16 v14, p4

    :goto_1ae
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/16 v5, 0x108

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_224

    :catch_1ba
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_1bf
    move-object/from16 v14, p4

    :goto_1c1
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/16 v5, 0x109

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_224

    :catch_1cc
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_1d1
    move-object/from16 v14, p4

    :goto_1d3
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/16 v5, 0x107

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_224

    :catch_1de
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_1e3
    move-object/from16 v14, p4

    :goto_1e5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/16 v5, 0x10d

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_224

    :catch_1f0
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_1f5
    move-object/from16 v14, p4

    :goto_1f7
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_224

    :catch_201
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_206
    move-object/from16 v14, p4

    :goto_208
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/16 v5, 0x105

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_224

    :catch_213
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v9, p3

    :goto_218
    move-object/from16 v14, p4

    :goto_21a
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const-string v1, "errorresponse"

    const/16 v5, 0x10a

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_224
    nop

    :goto_225
    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "UcmAgentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCMERRORTESTING: @UcmAgentService responding to importKeyPair with EXCEPTION error code  = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "errorresponse"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private final saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    const-string v0, "UcmAgentService"

    const-string/jumbo v1, "saw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_26

    const-string v2, "UcmAgentService"

    const-string/jumbo v3, "property is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_26
    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saw uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callerUid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmAgentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5d
    const-string v2, "KNOX"

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v2, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v2

    if-nez v2, :cond_7b

    const-string v3, "UcmAgentService"

    const-string v4, "Cannot get Keystore Instance"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "stringarrayresponse"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "errorresponse"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_7b
    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v4, "ownerUid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "resource"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "extraArgs"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    if-eqz v4, :cond_eb

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_a5
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    :cond_b5
    const-string/jumbo v6, "stringarrayresponse"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "errorresponse"

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "UcmAgentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UCMERRORTESTING: @UcmAgentService responding to saw with error code ks.getErrorStatus() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_eb
    const-string v5, "errorresponse"

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_f4
    .catch Ljava/security/KeyStoreException; {:try_start_5d .. :try_end_f4} :catch_123
    .catch Ljava/security/cert/CertificateException; {:try_start_5d .. :try_end_f4} :catch_117
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5d .. :try_end_f4} :catch_10c
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_f4} :catch_100
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5d .. :try_end_f4} :catch_f5

    goto :goto_12e

    :catch_f5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12f

    :catch_100
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10d

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12e

    :catch_10c
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12e

    :catch_117
    move-exception v2

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x105

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12e

    :catch_123
    move-exception v2

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    const-string v3, "errorresponse"

    const/16 v4, 0x10a

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_12e
    nop

    :goto_12f
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "UcmAgentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @UcmAgentService responding to saw with EXCEPTION error code  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public abstract APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract generateDek()Landroid/os/Bundle;
.end method

.method public abstract generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateWrappedDek()Landroid/os/Bundle;
.end method

.method public abstract getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
.end method

.method public abstract getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getDek()Landroid/os/Bundle;
.end method

.method public abstract getDetailErrorMessage(I)Ljava/lang/String;
.end method

.method public abstract getInfo()Landroid/os/Bundle;
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public abstract getStatus()Landroid/os/Bundle;
.end method

.method public abstract notifyChange(ILandroid/os/Bundle;)I
.end method

.method public final notifyCredentialStorageChanged()V
    .registers 3

    const-string v0, "UcmAgentService"

    const-string/jumbo v1, "notifyCredentialStorageChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$1;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public abstract setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setState(I)Landroid/os/Bundle;
.end method

.method public abstract unwrapDek([B)Landroid/os/Bundle;
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method
