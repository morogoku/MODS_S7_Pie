.class Lcom/android/systemui/qs/external/TileServices$4$1;
.super Ljava/lang/Object;
.source "TileServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/TileServices$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/external/TileServices$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServices;->access$200(Lcom/android/systemui/qs/external/TileServices;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    iget-object v2, v2, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {v2}, Lcom/android/systemui/qs/external/TileServices;->access$200(Lcom/android/systemui/qs/external/TileServices;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v3}, Lcom/android/systemui/qs/external/TileServiceManager;->getIsDefaultTile()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    :try_start_1
    invoke-virtual {v3}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
