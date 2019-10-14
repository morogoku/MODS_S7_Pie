.class Lcom/android/systemui/servicebox/pages/music/CastManager$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "CastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/CastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/CastManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/music/CastManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/CastManager$1;->this$0:Lcom/android/systemui/servicebox/pages/music/CastManager;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Chromecast Ultra"

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager$1;->this$0:Lcom/android/systemui/servicebox/pages/music/CastManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/music/CastManager;->access$002(Lcom/android/systemui/servicebox/pages/music/CastManager;Z)Z

    :cond_0
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager$1;->this$0:Lcom/android/systemui/servicebox/pages/music/CastManager;

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Chromecast Ultra"

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/music/CastManager;->access$002(Lcom/android/systemui/servicebox/pages/music/CastManager;Z)Z

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Chromecast Ultra"

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/CastManager$1;->this$0:Lcom/android/systemui/servicebox/pages/music/CastManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/music/CastManager;->access$002(Lcom/android/systemui/servicebox/pages/music/CastManager;Z)Z

    :cond_0
    return-void
.end method
