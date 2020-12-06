.class Lcom/android/server/pm/permission/PermissionManagerService$1;
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

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;II)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->val$appId:I

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->val$appId:I

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->val$userId:I

    const-string/jumbo v3, "permission grant or revoke changed gids"

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;IILjava/lang/String;)V

    return-void
.end method
