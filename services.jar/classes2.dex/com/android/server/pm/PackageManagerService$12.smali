.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$canViewInstantApps:Z

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$internalPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I

.field final synthetic val$versionCode:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$canViewInstantApps:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    const/4 v0, 0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_31

    iget v5, v1, Lcom/android/server/pm/PackageManagerService$12;->val$callingUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-boolean v6, v1, Lcom/android/server/pm/PackageManagerService$12;->val$canViewInstantApps:Z

    if-eqz v6, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v6, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    move v6, v4

    :goto_30
    move v0, v6

    :cond_31
    move v5, v0

    if-eqz v5, :cond_ab

    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    if-nez v0, :cond_47

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-wide v8, v1, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:J

    iget v10, v1, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v11, v1, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v0

    goto :goto_ac

    :cond_47
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    # invokes: Lcom/android/server/pm/PackageManagerService;->getBlockUninstallForUsers(Ljava/lang/String;[I)[I
    invoke-static {v0, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_66

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-wide v9, v1, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:J

    iget v11, v1, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v12, v1, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v6

    goto :goto_a9

    :cond_66
    iget v6, v1, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    and-int/lit8 v6, v6, -0x3

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    array-length v14, v13

    const/4 v15, 0x0

    :goto_6e
    if-ge v15, v14, :cond_a8

    aget v12, v13, v15

    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_a5

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-wide v9, v1, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:J

    move v11, v12

    move v3, v12

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v7

    if-eq v7, v4, :cond_a5

    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package delete failed for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", returnCode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    add-int/lit8 v15, v15, 0x1

    goto :goto_6e

    :cond_a8
    const/4 v6, -0x4

    :goto_a9
    move v0, v6

    goto :goto_ac

    :cond_ab
    const/4 v0, -0x1

    :goto_ac
    move v3, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    if-ltz v3, :cond_b2

    goto :goto_b3

    :cond_b2
    const/4 v4, 0x0

    :goto_b3
    iget v6, v1, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    invoke-static {v0, v4, v6}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    :try_start_b8
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result of delete: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v0, v4, v3, v6}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_ec} :catch_ed

    goto :goto_f5

    :catch_ed
    move-exception v0

    const-string v4, "PackageManager"

    const-string v6, "Observer no longer exists."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f5
    return-void
.end method
