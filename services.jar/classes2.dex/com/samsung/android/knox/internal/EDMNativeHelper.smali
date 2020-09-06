.class public final Lcom/samsung/android/knox/internal/EDMNativeHelper;
.super Ljava/lang/Object;
.source "EDMNativeHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "EDMNativeHelper"

    sput-object v0, Lcom/samsung/android/knox/internal/EDMNativeHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAVRCPProfileEnabled()Z
    .registers 3

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    const/16 v2, 0x10

    :try_start_f
    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return v2

    :catch_14
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_18
    return v1
.end method

.method public static isAudioRecordAllowed(I)Z
    .registers 4

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    :try_start_e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    return v2

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1c
    return v1
.end method

.method public static isAuditLogEnabled()Z
    .registers 2

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_c
    invoke-interface {v0}, Lcom/samsung/android/knox/log/IAuditLog;->isAuditServiceRunning()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return v1

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public static isBTOutgoingCallEnabled()Z
    .registers 2

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isOutgoingCallsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    return v1

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method public static isCameraEnabled(I)Z
    .registers 7

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    :try_start_e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_17} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    return v2

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    :catch_1d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_26

    :catch_22
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_26
    nop

    :cond_27
    :goto_27
    const/4 v2, 0x1

    const-string v3, "device_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    if-eqz v3, :cond_4f

    const/4 v4, 0x0

    :try_start_35
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3d} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_3d} :catch_45
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3d} :catch_40

    xor-int/2addr v1, v4

    move v2, v1

    :goto_3f
    goto :goto_4f

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3f

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3f

    :cond_4f
    :goto_4f
    return v2
.end method

.method public static isFaceRecognitionAllowedEvenCameraBlocked(I)Z
    .registers 3

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17

    return v1

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method public static isIrisCameraEnabled(I)Z
    .registers 4

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    :try_start_e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    return v2

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1c
    return v1
.end method

.method public static isMicrophoneEnabled(I)Z
    .registers 4

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    :try_start_e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    return v2

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1c
    return v1
.end method

.method public static isPackageInAvrWhitelist(I)Z
    .registers 4

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x3

    :try_start_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInWhitelistInternal(III)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return v1

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    nop

    :cond_20
    :goto_20
    const/4 v1, 0x0

    return v1
.end method

.method public static isScreenCaptureEnabled()Z
    .registers 3

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    :try_start_e
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return v2

    :catch_13
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_17
    return v1
.end method

.method public static isVideoRecordAllowed(I)Z
    .registers 4

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    :try_start_e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    return v2

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1c
    return v1
.end method

.method public static nativeLogger(IIIILjava/lang/String;[B)V
    .registers 16

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1e

    const/4 v6, 0x1

    aget-object v9, v1, v2

    move v4, p0

    move v5, p1

    move v7, p3

    move-object v8, p4

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1b} :catch_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    goto :goto_27

    :catch_1f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/internal/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported conversion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public static nativeLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static nativeLoggerPrivileged(IIIILjava/lang/String;[B)V
    .registers 19

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4} :catch_2b

    move-object/from16 v2, p5

    :try_start_6
    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    array-length v5, v1

    if-ge v4, v5, :cond_28

    if-eqz p2, :cond_19

    const/4 v6, 0x1

    move v9, v6

    goto :goto_1a

    :cond_19
    move v9, v3

    :goto_1a
    aget-object v12, v1, v4

    move v7, p0

    move v8, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_25} :catch_29

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_28
    goto :goto_35

    :catch_29
    move-exception v0

    goto :goto_2e

    :catch_2b
    move-exception v0

    move-object/from16 v2, p5

    :goto_2e
    sget-object v1, Lcom/samsung/android/knox/internal/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unsupported conversion"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method public static nativeLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendIntent(I)V
    .registers 3

    const-string v0, "enterprise_policy_new"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_c
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->sendIntent(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_14
    :goto_14
    return-void
.end method

.method public static native setAuditEnabled(Z)V
.end method

.method public static native setIptablesLogsEnabled(Z)V
.end method

.method public static native setKernelLogsEnabled(Z)V
.end method

.method public static updateRemoteScreenDimensionsAndCallerUid(III)V
    .registers 5

    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_d
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->updateRemoteScreenDimensionsAndCallerUid(III)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_15
    :goto_15
    return-void
.end method
