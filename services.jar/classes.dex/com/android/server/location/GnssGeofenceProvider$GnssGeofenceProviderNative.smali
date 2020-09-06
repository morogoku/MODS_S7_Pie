.class Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;
.super Ljava/lang/Object;
.source "GnssGeofenceProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssGeofenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssGeofenceProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofence(IDDDIIII)Z
    .registers 13

    # invokes: Lcom/android/server/location/GnssGeofenceProvider;->native_add_geofence(IDDDIIII)Z
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/GnssGeofenceProvider;->access$100(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method public isGeofenceSupported()Z
    .registers 2

    # invokes: Lcom/android/server/location/GnssGeofenceProvider;->native_is_geofence_supported()Z
    invoke-static {}, Lcom/android/server/location/GnssGeofenceProvider;->access$000()Z

    move-result v0

    return v0
.end method

.method public pauseGeofence(I)Z
    .registers 3

    # invokes: Lcom/android/server/location/GnssGeofenceProvider;->native_pause_geofence(I)Z
    invoke-static {p1}, Lcom/android/server/location/GnssGeofenceProvider;->access$400(I)Z

    move-result v0

    return v0
.end method

.method public removeGeofence(I)Z
    .registers 3

    # invokes: Lcom/android/server/location/GnssGeofenceProvider;->native_remove_geofence(I)Z
    invoke-static {p1}, Lcom/android/server/location/GnssGeofenceProvider;->access$200(I)Z

    move-result v0

    return v0
.end method

.method public resumeGeofence(II)Z
    .registers 4

    # invokes: Lcom/android/server/location/GnssGeofenceProvider;->native_resume_geofence(II)Z
    invoke-static {p1, p2}, Lcom/android/server/location/GnssGeofenceProvider;->access$300(II)Z

    move-result v0

    return v0
.end method
