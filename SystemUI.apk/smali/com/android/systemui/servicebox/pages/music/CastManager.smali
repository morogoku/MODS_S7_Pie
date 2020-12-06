.class public Lcom/android/systemui/servicebox/pages/music/CastManager;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mIsCasting:Z

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mIsCasting:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/CastManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/music/CastManager$1;-><init>(Lcom/android/systemui/servicebox/pages/music/CastManager;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mMediaRouter:Landroid/media/MediaRouter;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/servicebox/pages/music/CastManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mIsCasting:Z

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "         CastManager_LOCK"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "         mIsCasting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mIsCasting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         routeInfo.getDescription()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "         routeInfo.getDescription() empty"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCasting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mIsCasting:Z

    return v0
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/CastManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method
