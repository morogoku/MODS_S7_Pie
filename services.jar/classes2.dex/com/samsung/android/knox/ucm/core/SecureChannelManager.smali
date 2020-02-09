.class public Lcom/samsung/android/knox/ucm/core/SecureChannelManager;
.super Ljava/lang/Object;
.source "SecureChannelManager.java"


# static fields
.field public static final BUNDLE_EXTRA_SCP_ENCRYPTION:Ljava/lang/String; = "scp_encryption"

.field public static final BUNDLE_EXTRA_SCP_KEY_ID:Ljava/lang/String; = "scp_key_id"

.field public static final BUNDLE_EXTRA_SCP_KEY_LENGTH:Ljava/lang/String; = "scp_key_length"

.field public static final BUNDLE_EXTRA_SCP_KEY_PARAM_DH_G:Ljava/lang/String; = "scp_key_agreement_param_dh_g"

.field public static final BUNDLE_EXTRA_SCP_KEY_PARAM_DH_P:Ljava/lang/String; = "scp_key_agreement_param_dh_p"

.field public static final BUNDLE_EXTRA_SCP_KEY_PARAM_ECC:Ljava/lang/String; = "scp_key_agreement_param_ecc"

.field public static final BUNDLE_EXTRA_SCP_KEY_VERSION:Ljava/lang/String; = "scp_key_version"

.field public static final BUNDLE_EXTRA_SCP_MAC:Ljava/lang/String; = "scp_mac"

.field public static final BUNDLE_EXTRA_SCP_PROTOCOL:Ljava/lang/String; = "scp_protocol"

.field public static final BUNDLE_SCP_KEY_PARAM_ECC_FRP_P256:I = 0x40

.field public static final BUNDLE_SCP_KEY_PARAM_ECC_NIST_P256:I = 0x0

.field private static final DBG:Z = true

.field public static final ERROR_APDU_PARSING:I = 0x34

.field public static final ERROR_CA_CERT_NOT_FOUND:I = 0x37

.field public static final ERROR_CHANNEL_NOT_FOUND:I = 0x35

.field public static final ERROR_DEVICE_COMPROMISED:I = 0x3e

.field public static final ERROR_INTERNAL:I = 0x32

.field public static final ERROR_INTERNAL_CRYPTO_FAILED:I = 0x39

.field public static final ERROR_INVALID_MESSAGE_TYPE:I = 0x40

.field public static final ERROR_INVALID_PERMISSION:I = 0x41

.field public static final ERROR_INVALID_PROTOCOL:I = 0x3f

.field public static final ERROR_INVALID_SD_CERT:I = 0x3b

.field public static final ERROR_INVALID_SD_MAC:I = 0x3d

.field public static final ERROR_INVALID_SD_RECEIPT:I = 0x3c

.field public static final ERROR_NOT_SUPPORTED_CURVE:I = 0x3a

.field public static final ERROR_NO_INTERNAL_MEMORY:I = 0x36

.field public static final ERROR_SD_CERT_NOT_FOUND:I = 0x38

.field public static final ERROR_TLV_PARSING:I = 0x33

.field public static final ERROR_TZ_APP_CONNECTION_FAILED:I = 0x42

.field public static final MESSAGE_TYPE_COMMAND:I = 0xc8

.field public static final MESSAGE_TYPE_FORWARD_TO_SD:I = 0x190

.field public static final MESSAGE_TYPE_PROCESSING_COMPLETED:I = 0x191

.field public static final MESSAGE_TYPE_RESPONSE:I = 0xc9

.field public static final MESSAGE_TYPE_SECURE_CHANNEL:I = 0xca

.field public static final PROTOCOL_TYPE_SCP11A:I = 0x64

.field public static final PROTOCOL_TYPE_SCP11B:I = 0x65

.field public static final PROTOCOL_TYPE_SCP_CUSTOM:I = 0x66

.field public static final PROTOCOL_TYPE_SCP_OTHER:I = 0x67

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.samsung.ucs.ucsservice"

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_SC_CONSTRUCTED:I = 0x12c

.field public static final STATUS_SC_REQUIRED:I = 0x12d

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecureChannelManager"


# instance fields
.field private final mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ucm/core/IUcmService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/ucm/core/SecureChannelManager;
    .registers 2

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x0

    return-object v1

    :cond_e
    new-instance v1, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;-><init>(Lcom/samsung/android/knox/ucm/core/IUcmService;)V

    return-object v1
.end method


# virtual methods
.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SecureChannelManager.createSecureChannel"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    const-string v1, "SecureChannelManager"

    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public destroySecureChannel()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SecureChannelManager.destroySecureChannel"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->destroySecureChannel()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    const-string v1, "SecureChannelManager"

    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    return v1
.end method

.method public processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SecureChannelManager.processMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/SecureChannelManager;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    const-string v1, "SecureChannelManager"

    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method
