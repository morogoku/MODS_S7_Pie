.class Lcom/android/server/pm/permission/PermissionManagerService$2;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field final synthetic val$appId:I

.field final synthetic val$appOp:I

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;IIILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$appId:I

    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$appOp:I

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$userId:I

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$appId:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$appOp:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_28

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$appOp:I

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    if-nez v2, :cond_3b

    iget v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$appOp:I

    invoke-virtual {v1, v4, v0, v3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$appId:I

    iget v5, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$userId:I

    const-string v6, "Permission related app op changed"

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;IILjava/lang/String;)V

    :cond_3b
    return-void
.end method
