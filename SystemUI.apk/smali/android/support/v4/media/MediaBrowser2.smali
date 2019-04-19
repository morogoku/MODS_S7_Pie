.class public Landroid/support/v4/media/MediaBrowser2;
.super Landroid/support/v4/media/MediaController2;
.source "MediaBrowser2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;,
        Landroid/support/v4/media/MediaBrowser2$BrowserCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaBrowser2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowser2;->DEBUG:Z

    return-void
.end method


# virtual methods
.method getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;
    .locals 1

    invoke-super {p0}, Landroid/support/v4/media/MediaController2;->getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    return-object v0
.end method

.method bridge synthetic getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v0

    return-object v0
.end method
