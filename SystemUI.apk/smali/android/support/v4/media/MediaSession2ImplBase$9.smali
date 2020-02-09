.class Landroid/support/v4/media/MediaSession2ImplBase$9;
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
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$newPlaylist:Ljava/util/List;


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$9;->val$newPlaylist:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$9;->this$0:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onPlaylistChanged(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
