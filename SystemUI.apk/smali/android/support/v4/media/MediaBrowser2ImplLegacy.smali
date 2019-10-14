.class Landroid/support/v4/media/MediaBrowser2ImplLegacy;
.super Landroid/support/v4/media/MediaController2ImplLegacy;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;,
        Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;,
        Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;
    }
.end annotation


# instance fields
.field private final mBrowserCompats:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$000(Landroid/support/v4/media/MediaBrowser2ImplLegacy;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getExtrasWithoutPagination(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getExtrasWithoutPagination(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :try_start_0
    const-string v0, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-super {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;
    .locals 1

    invoke-super {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    return-object v0
.end method

.method public bridge synthetic getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Landroid/support/v4/media/MediaBrowser2;
    .locals 1

    invoke-super {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowser2;

    return-object v0
.end method

.method public bridge synthetic getInstance()Landroid/support/v4/media/MediaController2;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0

    return-object v0
.end method
