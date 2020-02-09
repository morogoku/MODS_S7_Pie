.class public Landroid/support/v4/media/MediaController2;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaController2$PlaybackInfo;,
        Landroid/support/v4/media/MediaController2$ControllerCallback;,
        Landroid/support/v4/media/MediaController2$SupportLibraryImpl;,
        Landroid/support/v4/media/MediaController2$VolumeFlags;,
        Landroid/support/v4/media/MediaController2$VolumeDirection;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    return-object v0
.end method

.method getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->isConnected()Z

    move-result v0

    return v0
.end method
