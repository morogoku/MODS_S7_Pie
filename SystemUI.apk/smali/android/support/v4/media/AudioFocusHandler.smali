.class public Landroid/support/v4/media/AudioFocusHandler;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;,
        Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->close()V

    return-void
.end method

.method public onPauseRequested()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->onPauseRequested()Z

    move-result v0

    return v0
.end method

.method public onPlayRequested()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->onPlayRequested()Z

    move-result v0

    return v0
.end method

.method public onPlayerStateChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->onPlayerStateChanged(I)V

    return-void
.end method
