.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;
.super Lcom/samsung/android/edge/IEdgeManager$Stub;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeManagerService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeManagerService"


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public bindEdgeLightingService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_e

    goto :goto_d

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    :goto_d
    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->disableEdgeLightingNotification(Ljava/lang/String;Z)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$900(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string v2, "EdgeManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getEdgeLightingState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->getEdgeLightingState()I

    move-result v0

    return v0
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->unbindService(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    return-void
.end method
