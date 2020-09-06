.class public Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;
.super Ljava/lang/Object;
.source "UniversalCredentialUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;,
        Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    }
.end annotation


# static fields
.field public static final AGENT_CONFIGURATORLIST:Ljava/lang/String; = "configuratorList"

.field public static final AGENT_ENFORCEMANAGEMENT:Ljava/lang/String; = "enforceManagement"

.field public static final AGENT_ID:Ljava/lang/String; = "id"

.field public static final AGENT_ISDETACHABLE:Ljava/lang/String; = "isDetachable"

.field public static final AGENT_ISHARDWAREBACKED:Ljava/lang/String; = "isHardwareBacked"

.field public static final AGENT_ISMANAGEABLE:Ljava/lang/String; = "isManageable"

.field public static final AGENT_ISREADONLY:Ljava/lang/String; = "isReadOnly"

.field public static final AGENT_IS_GENERATE_PASSWORD_AVAILABLE:Ljava/lang/String; = "isGeneratePasswordAvailable"

.field public static final AGENT_IS_ODE_SUPPORTED:Ljava/lang/String; = "isODESupport"

.field public static final AGENT_IS_PUK_SUPPORTED:Ljava/lang/String; = "isPUKSupported"

.field public static final AGENT_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final AGENT_REQUSERVERIFICATION:Ljava/lang/String; = "reqUserVerification"

.field public static final AGENT_STORAGE_TYPE:Ljava/lang/String; = "storageType"

.field public static final AGENT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final AGENT_TITLE:Ljava/lang/String; = "title"

.field public static final AGENT_VENDORID:Ljava/lang/String; = "vendorId"

.field public static final CACERT_ENTRY_TYPE:I = 0x4

.field public static final CCM_SOURCE:Ljava/lang/String; = "CCM"

.field private static final DBG:Z = true

.field public static final EVENT_FACTORY_RESET:I = 0x65

.field public static final INVALID_RESOURCE:I = -0x1

.field public static final INVALID_UID:I = -0x1

.field public static final KNOX_SOURCE:Ljava/lang/String; = "KNOX"

.field public static final ODE_ENABLED:Ljava/lang/String; = "odeEnabled"

.field public static final ODE_SIGNATURE:Ljava/lang/String; = "odeSignature"

.field public static final PRIVATEKEY_ENTRY_TYPE:I = 0x1

.field public static final SECRETKEY_ENTRY_TYPE:I = 0x2

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.samsung.ucs.ucsservice"

.field private static final TAG:Ljava/lang/String; = "UniversalCredentialUtil"

.field public static final UCM_VERSION_1:Ljava/lang/String; = "v1"

.field public static final UCM_VERSION_2:Ljava/lang/String; = "v2"

.field public static final UCS_ALL_RESOURCE:I = 0x4

.field public static final UCS_KEYCHAIN_SCHEME:Ljava/lang/String; = "ucmkeychain"

.field public static final UCS_PRIVATE_KEYCHAIN_RESOURCE:I = 0x2

.field public static final UCS_PUBLIC_KEYCHAIN_RESOURCE:I = 0x1

.field public static final UCS_SCHEME:Ljava/lang/String; = "ucmkeychain"

.field public static final UCS_SSL_ENGINE:Ljava/lang/String; = "ucsengine"

.field public static final UCS_WIFI_KEYCHAIN_RESOURCE:I = 0x3

.field public static final UID_SELF:I = -0x1

.field public static final UNIQUE_ID:Ljava/lang/String; = "uniqueId"


# instance fields
.field private final mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ucm/core/IUcmService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;
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
    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;-><init>(Lcom/samsung/android/knox/ucm/core/IUcmService;)V

    return-object v1
.end method

.method public static getKeychainUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "v1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    :cond_28
    return-object v1
.end method

.method public static getKeychainUri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "v1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    :cond_24
    return-object v1
.end method

.method public static getKeychainUri(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUser(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProviderInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;
    .registers 8

    new-instance v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "UniversalCredentialUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DETAILED agentInfo information for provider: AGENT_ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "id"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AGENT_SUMMARY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "summary"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AGENT_TITLE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "title"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AGENT_VENDORID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vendorId"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AGENT_ISDETACHABLE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isDetachable"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AGENT_PACKAGENAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "packageName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getRawAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSource(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_40

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_c
    const-string v3, ""

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "v1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    :cond_23
    const-string v4, "UniversalCredentialUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resource:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_3a} :catch_3b

    return-object v3

    :catch_3b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    return-object v1

    :cond_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Source is not known. Invalid URI."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getUCMVersion()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "v1"

    return-object v0
.end method

.method public static getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "v1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    :cond_28
    return-object v1
.end method

.method public static isKeyChainUri(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    return v0

    :cond_12
    const-string/jumbo v3, "ucmkeychain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    return v4

    :cond_1d
    return v0
.end method

.method public static isUcsStoreUri(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    return v0

    :cond_12
    const-string/jumbo v3, "ucmkeychain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    return v4

    :cond_1d
    return v0
.end method

.method public static isValidUri(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialUtil.APDUCommand"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "UniversalCredentialUtil"

    const-string v1, "APDUCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    const-string v0, "UniversalCredentialUtil"

    const-string v2, "binder is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v0

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialUtil.changePin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "UniversalCredentialUtil"

    const-string v1, "...changePin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    const-string v0, "UniversalCredentialUtil"

    const-string v2, "binder is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v0

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v2, "UniversalCredentialUtil"

    const-string/jumbo v3, "response is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_12
    const-string v2, "UniversalCredentialUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UCMERRORTESTING: @UniversalCredentialUtil responding to delete with error code  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "errorresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2e} :catch_2f

    return-object v1

    :catch_2f
    move-exception v1

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "UniversalCredentialUtil"

    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "UniversalCredentialUtil"

    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "UniversalCredentialUtil"

    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getCertificateChain(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    const-string v0, "UniversalCredentialUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credential Manager calling getCertificateChain for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    if-nez v1, :cond_28

    const-string v2, "UniversalCredentialUtil"

    const-string/jumbo v3, "parcel is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_28
    iget v2, v1, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    iget-object v3, v1, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "errorresponse"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "bytearrayresponse"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3b} :catch_3c

    return-object v4

    :catch_3c
    move-exception v1

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getFriendlyName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return-object v0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialUtil.getInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "UniversalCredentialUtil"

    const-string v1, "getInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    const-string v0, "UniversalCredentialUtil"

    const-string v2, "binder is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v0

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 6

    new-instance v0, Lcom/samsung/ucm/crypto/UCMOpenSSLEngineHelper;

    invoke-direct {v0}, Lcom/samsung/ucm/crypto/UCMOpenSSLEngineHelper;-><init>()V

    :try_start_5
    invoke-virtual {v0, p1}, Lcom/samsung/ucm/crypto/UCMOpenSSLEngineHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_9
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v1

    :catch_a
    move-exception v1

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "InvalidKeyException in getUCMPrivateKey"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 5

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v1, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getProviderInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v2

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviders()[Ljava/security/Provider;
    .registers 10

    const-string v0, "UniversalCredentialUtil"

    const-string v1, "getProviders"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->listProviders()[Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_46

    array-length v2, v1

    if-eqz v2, :cond_46

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_39

    aget-object v5, v1, v4

    const-string/jumbo v6, "uniqueId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2f

    const-string v7, "UniversalCredentialUtil"

    const-string v8, "NULL agent ID name Returned for bundle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_2f
    invoke-direct {p0, v6, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getProviderInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Provider;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Provider;

    return-object v3

    :cond_46
    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Provider list is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_4d} :catch_4e

    return-object v0

    :catch_4e
    move-exception v1

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public grantKeychainAccess(Ljava/lang/String;I)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->grantKeyChainAccess(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "UniversalCredentialUtil"

    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v2, "UniversalCredentialUtil"

    const-string/jumbo v3, "response is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_12
    const-string v2, "UniversalCredentialUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UCMERRORTESTING: @UniversalCredentialUtil responding to importKeyPair with error code  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "errorresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2e} :catch_2f

    return-object v1

    :catch_2f
    move-exception v1

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public refreshUCMPlugin()V
    .registers 4

    const-string v0, "UniversalCredentialUtil"

    const-string/jumbo v1, "refreshUCMPlugin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez v0, :cond_14

    const-string v0, "UniversalCredentialUtil"

    const-string v1, "UCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    nop

    return-void

    :catch_1b
    move-exception v0

    const-string v1, "UniversalCredentialUtil"

    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8

    const-string v0, "UniversalCredentialUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credential Manager calling saw for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_28

    const-string v2, "UniversalCredentialUtil"

    const-string/jumbo v3, "response is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_28
    const-string v2, "UniversalCredentialUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UCMERRORTESTING: @UniversalCredentialUtil responding to saw with error code  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "errorresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_44} :catch_45

    return-object v1

    :catch_45
    move-exception v1

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public setCertificateChain(Ljava/lang/String;[B)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    return-object v1

    :catch_8
    move-exception v1

    const-string v2, "UniversalCredentialUtil"

    const-string v3, "Cannot connect to service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
