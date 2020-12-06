.class Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;
.super Lcom/android/server/pm/permission/PermissionManagerInternal;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method


# virtual methods
.method public addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method public addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method public addDynamicPermission(Landroid/content/pm/PermissionInfo;ZILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    invoke-static {v0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$900(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method public applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3500(Lcom/android/server/pm/permission/PermissionManagerService;II)Z

    move-result v0

    return v0
.end method

.method public applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method public applyRuntimePermissionsOnInstallationForMDM(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsOnInstallationForMDM(Ljava/lang/String;I)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V

    return-void
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method public enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    return-void
.end method

.method public enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    return-void
.end method

.method public enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public getAllPermissionGroups(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2600(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionSettings()Lcom/android/server/pm/permission/PermissionSettings;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4000(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4000(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionGroupsForMDM()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getRuntimePermissionGroupsForMDM()Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method public grantRuntimePermissionsGrantedToDisabledPackage(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method public isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method public queryRuntimePermissionGroupByPermissionForMDM(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->queryRuntimePermissionGroupByPermissionForMDM(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryRuntimePermissionsByPermissionGroupForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->queryRuntimePermissionsByPermissionGroupForMDM(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public reconcileAdditionalRuntimePermissionsForMDM(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->reconcileAdditionalRuntimePermissionsForMDM(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$800(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method public removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method public removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method public revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method public setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method

.method public updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method public updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method public updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method
