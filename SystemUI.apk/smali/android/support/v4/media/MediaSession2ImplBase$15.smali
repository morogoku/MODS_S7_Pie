.class Landroid/support/v4/media/MediaSession2ImplBase$15;
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
.field final synthetic val$bufferedPositionMs:J

.field final synthetic val$bufferingState:I

.field final synthetic val$item:Landroid/support/v4/media/MediaItem2;


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$item:Landroid/support/v4/media/MediaItem2;

    iget v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$bufferingState:I

    iget-wide v2, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$bufferedPositionMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onBufferingStateChanged(Landroid/support/v4/media/MediaItem2;IJ)V

    return-void
.end method
