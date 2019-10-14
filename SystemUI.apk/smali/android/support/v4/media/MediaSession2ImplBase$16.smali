.class Landroid/support/v4/media/MediaSession2ImplBase$16;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSession2ImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentTimeMs:J

.field final synthetic val$positionMs:J

.field final synthetic val$speed:F


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$16;->val$currentTimeMs:J

    iget-wide v3, p0, Landroid/support/v4/media/MediaSession2ImplBase$16;->val$positionMs:J

    iget v5, p0, Landroid/support/v4/media/MediaSession2ImplBase$16;->val$speed:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onPlaybackSpeedChanged(JJF)V

    return-void
.end method
