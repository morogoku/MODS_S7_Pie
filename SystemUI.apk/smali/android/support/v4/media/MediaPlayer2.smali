.class public abstract Landroid/support/v4/media/MediaPlayer2;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaPlayer2$MetricsConstants;,
        Landroid/support/v4/media/MediaPlayer2$ProvisioningServerErrorException;,
        Landroid/support/v4/media/MediaPlayer2$ProvisioningNetworkErrorException;,
        Landroid/support/v4/media/MediaPlayer2$NoDrmSchemeException;,
        Landroid/support/v4/media/MediaPlayer2$DrmInfo;,
        Landroid/support/v4/media/MediaPlayer2$PrepareDrmStatusCode;,
        Landroid/support/v4/media/MediaPlayer2$DrmEventCallback;,
        Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;,
        Landroid/support/v4/media/MediaPlayer2$CallStatus;,
        Landroid/support/v4/media/MediaPlayer2$CallCompleted;,
        Landroid/support/v4/media/MediaPlayer2$MediaInfo;,
        Landroid/support/v4/media/MediaPlayer2$MediaError;,
        Landroid/support/v4/media/MediaPlayer2$MediaPlayer2State;,
        Landroid/support/v4/media/MediaPlayer2$EventCallback;,
        Landroid/support/v4/media/MediaPlayer2$TrackInfo;,
        Landroid/support/v4/media/MediaPlayer2$SeekMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public seekTo(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaPlayer2;->seekTo(JI)V

    return-void
.end method

.method public abstract seekTo(JI)V
.end method
