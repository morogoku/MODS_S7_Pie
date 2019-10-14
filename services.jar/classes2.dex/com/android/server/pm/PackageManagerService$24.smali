.class Lcom/android/server/pm/PackageManagerService$24;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$mediaStatus:Z

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$24;->val$mediaStatus:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$24;->val$reportStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$24;->val$mediaStatus:Z

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$24;->val$reportStatus:Z

    const/4 v3, 0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatusInner(ZZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$7400(Lcom/android/server/pm/PackageManagerService;ZZZ)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_1b

    :catch_b
    move-exception v0

    const-string v1, "PackageManager"

    const-string/jumbo v2, "updateExternalMediaStatus RuntimeException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    const-string/jumbo v2, "updateExternalMediaStatus runtime exception: is asec cmd timeout?"

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1b
    return-void
.end method
