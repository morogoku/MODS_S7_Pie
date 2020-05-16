.class Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OMSCallbackRunnable"
.end annotation


# instance fields
.field private final overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

.field private final overlayTarget:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final removed:Z

.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;IZ)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->removed:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->removed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10b

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    move-object v0, v3

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMSCallbackRunnable running for removed package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " overlayTarget = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ParserPackage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_d .. :try_end_47} :catchall_108

    if-eqz v0, :cond_db

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsSamsungThemeOverlay:Z

    if-eqz v2, :cond_b1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_b1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/overlays/currentstyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b1

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMSCallbackRunnable onOverlayPackageChanged p = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v2, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageChanged(Ljava/lang/String;IZ)V

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_9c
    if-ge v4, v3, :cond_b0

    aget v5, v2, v4

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_ad

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v5, v1}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageChanged(Ljava/lang/String;IZ)V

    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    :cond_b0
    return-void

    :cond_b1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b8
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V
    invoke-static {v3, v0, v4}, Lcom/android/server/pm/PackageManagerService;->access$11500(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_b8 .. :try_end_c1} :catchall_d8

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_c8
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->removePackageLPw(Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_db

    :catchall_d5
    move-exception v1

    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_d5

    throw v1

    :catchall_d8
    move-exception v1

    :try_start_d9
    monitor-exit v2
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v1

    :cond_db
    :goto_db
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    :goto_f1
    if-ge v1, v3, :cond_107

    aget v4, v2, v1

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_104

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_104
    add-int/lit8 v1, v1, 0x1

    goto :goto_f1

    :cond_107
    goto :goto_14b

    :catchall_108
    move-exception v1

    :try_start_109
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw v1

    :cond_10b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    if-eqz v0, :cond_14b

    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMSCallbackRunnable Enabling package at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v0, v2, v3}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageAdded(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v2, v0

    :goto_137
    if-ge v1, v2, :cond_14b

    aget v3, v0, v1

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_148

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageAdded(Ljava/lang/String;I)V

    :cond_148
    add-int/lit8 v1, v1, 0x1

    goto :goto_137

    :cond_14b
    :goto_14b
    return-void
.end method
