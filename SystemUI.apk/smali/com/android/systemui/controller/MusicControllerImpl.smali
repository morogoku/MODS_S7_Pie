.class public Lcom/android/systemui/controller/MusicControllerImpl;
.super Ljava/lang/Object;
.source "MusicControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/MusicController;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MusicControllerImpl"

    iput-object v0, p0, Lcom/android/systemui/controller/MusicControllerImpl;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public downVolume(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public nextMedia(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public playMedia(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public previousMedia(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setVolume(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public stopMedia(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v4, "MusicControllerImpl"

    const-string/jumbo v5, "stopMedia "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public upVolume(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method
