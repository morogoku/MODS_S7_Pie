.class Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrentNetworkScoreCacheFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/UnaryOperator<",
        "Ljava/util/List<",
        "Landroid/net/ScoredNetwork;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCurrentNetwork:Landroid/net/NetworkKey;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/net/wifi/WifiInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2f

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;

    iget-object v2, v1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    invoke-virtual {v2, v3}, Landroid/net/NetworkKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2f
    :goto_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
