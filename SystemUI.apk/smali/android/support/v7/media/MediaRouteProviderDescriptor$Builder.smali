.class public final Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
.super Ljava/lang/Object;
.source "MediaRouteProviderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->access$000(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->access$100(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->access$200(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->access$200(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRoute(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "route descriptor already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "routes"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderDescriptor;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouteProviderDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;Landroid/support/v7/media/MediaRouteProviderDescriptor$1;)V

    return-object v0
.end method

.method setRoutes(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/support/v7/media/MediaRouteDescriptor;",
            ">;)",
            "Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "routes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method
