.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;
.super Lcom/samsung/android/edge/EdgeManagerInternal;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeLightingLocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/edge/EdgeManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public hideForNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_8
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hideForWakeLock(Ljava/lang/String;I)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLock(Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_8
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_16

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSuppressed(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->setSuppressed(I)V

    return-void
.end method

.method public showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public showForResumedActivity(Landroid/content/ComponentName;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForResumedActivity(Landroid/content/ComponentName;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public showForToast(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_8
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForToast(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public showForWakeLock(Ljava/lang/String;I)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLock(Ljava/lang/String;I)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_8
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public showForWakeUp(Ljava/lang/String;I)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUp(Ljava/lang/String;I)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public statusBarDisabled(II)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->statusBarDisabled(II)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
