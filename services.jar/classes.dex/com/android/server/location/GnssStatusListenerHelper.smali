.class abstract Lcom/android/server/location/GnssStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/IGnssStatusListener;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .registers 3

    const-string v0, "GnssStatusListenerHelper"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->setSupported(Z)V

    return-void
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssStatusListener;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onFirstFix(I)V
    .registers 3

    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$3;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/GnssStatusListenerHelper$5;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public onStatusChanged(Z)V
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssStatusListenerHelper$1;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;)V

    goto :goto_d

    :cond_8
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssStatusListenerHelper$2;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;)V

    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[F[F)V
    .registers 16

    new-instance v8, Lcom/android/server/location/GnssStatusListenerHelper$4;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GnssStatusListenerHelper$4;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;I[I[F[F[F[F)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method protected registerWithService()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected unregisterFromService()V
    .registers 1

    return-void
.end method
