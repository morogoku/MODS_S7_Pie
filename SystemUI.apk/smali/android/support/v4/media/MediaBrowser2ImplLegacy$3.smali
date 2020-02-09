.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;
.super Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.source "MediaBrowser2ImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowser2ImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

.field final synthetic val$mediaId:Ljava/lang/String;


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$1;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
