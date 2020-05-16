.class public Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
.super Ljava/lang/Object;
.source "KnoxEnterpriseLicenseManager.java"


# static fields
.field public static final ACTION_LICENSE_DEACTIVATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_DEACTIVATION_INTERNAL"

.field public static final ACTION_LICENSE_REGISTRATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_REGISTRATION_INTERNAL"

.field public static final ACTION_LICENSE_REGISTRATION_UMC_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_REGISTRATION_UMC_INTERNAL"

.field public static final ACTION_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

.field public static final ERROR_INTERNAL:I = 0x12d

.field public static final ERROR_INTERNAL_SERVER:I = 0x191

.field public static final ERROR_INVALID_BINDING:I = 0xd0

.field public static final ERROR_INVALID_LICENSE:I = 0xc9

.field public static final ERROR_INVALID_PACKAGE_NAME:I = 0xcc

.field public static final ERROR_LICENSE_ACTIVATION_NOT_FOUND:I = 0x2bf

.field public static final ERROR_LICENSE_DEACTIVATED:I = 0x2bc

.field public static final ERROR_LICENSE_EXPIRED:I = 0x2bd

.field public static final ERROR_LICENSE_QUANTITY_EXHAUSTED:I = 0x2be

.field public static final ERROR_LICENSE_QUANTITY_EXHAUSTED_ON_AUTO_RELEASE:I = 0x2c0

.field public static final ERROR_LICENSE_TERMINATED:I = 0xcb

.field public static final ERROR_NETWORK_DISCONNECTED:I = 0x1f5

.field public static final ERROR_NETWORK_GENERAL:I = 0x1f6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_CURRENT_DATE:I = 0xcd

.field public static final ERROR_NULL_PARAMS:I = 0x65

.field public static final ERROR_SIGNATURE_MISMATCH:I = 0xce

.field public static final ERROR_UNKNOWN:I = 0x66

.field public static final ERROR_USER_DISAGREES_LICENSE_AGREEMENT:I = 0x259

.field public static final ERROR_VERSION_CODE_MISMATCH:I = 0xcf

.field public static final EXTRA_LICENSE_ACTIVATION_INITIATOR:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ACTIVATION_INITIATOR"

.field public static final EXTRA_LICENSE_ATTESTATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

.field public static final EXTRA_LICENSE_DATA_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

.field public static final EXTRA_LICENSE_DATA_REQUEST_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

.field public static final EXTRA_LICENSE_ERROR_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

.field public static final EXTRA_LICENSE_GRANTED_PERMISSIONS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

.field public static final EXTRA_LICENSE_RESULT_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

.field public static final EXTRA_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

.field public static final LICENSE_ACTIVATION_INITIATOR_ADMIN:I = 0x384

.field public static final LICENSE_RESULT_TYPE_ACTIVATION:I = 0x320

.field public static final LICENSE_RESULT_TYPE_DEACTIVATION:I = 0x322

.field public static final LICENSE_RESULT_TYPE_VALIDATION:I = 0x321

.field private static final TAG:Ljava/lang/String; = "KnoxKnoxEnterpriseLicenseManager"

.field private static gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

.field private static lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iput-object p2, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    if-nez v1, :cond_17

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    :cond_17
    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    :cond_e
    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    if-nez v0, :cond_10

    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    :cond_10
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    return-object v0
.end method


# virtual methods
.method public activateLicense(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object v1, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-void

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method public activateLicense(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object v1, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    return-void

    :cond_e
    goto :goto_17

    :catch_f
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public activateLicenseForUMC(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->activateLicense(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deActivateLicense(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object v1, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-void

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method public deActivateLicense(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object v1, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    return-void

    :cond_e
    goto :goto_17

    :catch_f
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public deActivateLicenseForUMC(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->deActivateLicense(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return-object v0

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return-object v0

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public processLicenseResponse(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .registers 19

    const-string v2, "-1"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->processLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z

    move-result v0

    return v0
.end method

.method public processLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .registers 21

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_1b

    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1c

    return v0

    :cond_1b
    goto :goto_24

    :catch_1c
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    const/4 v0, 0x0

    return v0
.end method
