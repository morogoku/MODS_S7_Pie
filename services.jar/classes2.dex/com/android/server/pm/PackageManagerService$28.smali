.class Lcom/android/server/pm/PackageManagerService$28;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$28;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$28;->val$volumeUuid:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$28;->val$moveId:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$28;->val$callingUid:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$28;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$28;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$28;->val$volumeUuid:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$28;->val$moveId:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$28;->val$callingUid:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$28;->val$user:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_73

    :catch_10
    move-exception v0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$28;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$28;->val$moveId:I

    const/4 v3, -0x6

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_47

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_47
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    if-ne v1, v3, :cond_73

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v3

    iget v4, v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    const/4 v5, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_53

    :cond_6c
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_73
    :goto_73
    return-void
.end method
