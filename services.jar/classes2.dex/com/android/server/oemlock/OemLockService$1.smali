.class Lcom/android/server/oemlock/OemLockService$1;
.super Ljava/lang/Object;
.source "OemLockService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oemlock/OemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    const-string/jumbo v0, "no_factory_reset"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v1}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->setPersistentDataBlockOemUnlockAllowedBit(Z)V
    invoke-static {v1, v2}, Lcom/android/server/oemlock/OemLockService;->access$100(Lcom/android/server/oemlock/OemLockService;Z)V

    :cond_27
    return-void
.end method
