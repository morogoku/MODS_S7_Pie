.class Landroid/support/v4/media/MediaSession2ImplBase$11;
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
.field final synthetic val$newCurrentItem:Landroid/support/v4/media/MediaItem2;


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$11;->val$newCurrentItem:Landroid/support/v4/media/MediaItem2;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onCurrentMediaItemChanged(Landroid/support/v4/media/MediaItem2;)V

    return-void
.end method
