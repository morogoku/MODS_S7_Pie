.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$hasAccessInstantApps:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;IIILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$callingUid:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$hasAccessInstantApps:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    :goto_c
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$callingUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$hasAccessInstantApps:I

    if-nez v5, :cond_22

    goto :goto_24

    :cond_22
    move v5, v3

    goto :goto_25

    :cond_24
    :goto_24
    move v5, v2

    :goto_25
    move v1, v5

    :cond_26
    if-eqz v1, :cond_52

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x3

    :try_start_2e
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v9, 0x103

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearAppDataLIF(Landroid/content/pm/PackageParser$Package;II)V
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v9, 0x203

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearAppDataLIF(Landroid/content/pm/PackageParser$Package;II)V
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_4f

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v3}, Lcom/android/server/pm/PackageManagerService;->access$6800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    goto :goto_52

    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2

    :cond_52
    :goto_52
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_66

    :try_start_56
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5d} :catch_5e

    goto :goto_66

    :catch_5e
    move-exception v2

    const-string v3, "PackageManager"

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-void
.end method
