.class public Lcom/samsung/android/knox/location/Geofencing;
.super Ljava/lang/Object;
.source "Geofencing.java"


# static fields
.field public static final ACTION_DEVICE_INSIDE_GEOFENCE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

.field public static final ACTION_DEVICE_LOCATION_UNAVAILABLE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DEVICE_LOCATION_UNAVAILABLE"

.field public static final ACTION_DEVICE_OUTSIDE_GEOFENCE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DEVICE_OUTSIDE_GEOFENCE"

.field public static final ERROR_GEOFENCING_FAILED:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ID"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID"

.field private static final TAG:Ljava/lang/String; = "Geofencing"

.field public static final TYPE_CIRCLE:I = 0x1

.field public static final TYPE_LINEAR:I = 0x3

.field public static final TYPE_POLYGON:I = 0x2

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/location/Geofencing;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/location/Geofencing;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/location/Geofencing;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/location/Geofencing;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/location/Geofencing;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/location/Geofencing;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/location/Geofencing;->mSync:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_a

    const/4 v1, 0x0

    :try_start_6
    monitor-exit v0

    return-object v1

    :catchall_8
    move-exception v1

    goto :goto_1e

    :cond_a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/location/Geofencing;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/location/Geofencing;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v2

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_8

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/location/Geofencing;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/location/Geofencing;->mSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_13

    if-nez p1, :cond_8

    goto :goto_13

    :cond_8
    :try_start_8
    new-instance v1, Lcom/samsung/android/knox/location/Geofencing;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/location/Geofencing;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :cond_13
    :goto_13
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/location/IGeofencing;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    if-nez v0, :cond_10

    const-string v0, "geofencing"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/location/IGeofencing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    return-object v0
.end method


# virtual methods
.method public createGeofence(Lcom/samsung/android/knox/location/Geofence;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Geofencing.createGeofence"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/location/IGeofencing;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/Geofence;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public destroyGeofence(I)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Geofencing.destroyGeofence"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/location/IGeofencing;->destroyGeofence(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getGeofences()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Geofencing.getGeofences"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/IGeofencing;->getGeofences(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinDistanceParameter()F
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/IGeofencing;->getMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;)F

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getMinTimeParameter()J
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/IGeofencing;->getMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isDeviceInsideGeofence()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/IGeofencing;->isDeviceInsideGeofence(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public isGeofencingEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Geofencing.isGeofencingEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/IGeofencing;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setMinDistanceParameter(F)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Geofencing.setMinDistanceParameter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/location/IGeofencing;->setMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;F)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMinTimeParameter(J)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Geofencing.setMinTimeParameter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/location/IGeofencing;->setMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public startGeofencing()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Geofencing.startGeofencing"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/IGeofencing;->startGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public stopGeofencing()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Geofencing.stopGeofencing"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofencing;->getService()Lcom/samsung/android/knox/location/IGeofencing;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/location/Geofencing;->mGeofenceService:Lcom/samsung/android/knox/location/IGeofencing;

    iget-object v1, p0, Lcom/samsung/android/knox/location/Geofencing;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/IGeofencing;->stopGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
