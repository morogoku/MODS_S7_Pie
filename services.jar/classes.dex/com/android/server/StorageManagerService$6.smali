.class Lcom/android/server/StorageManagerService$6;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService$6;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "storaged died; reconnecting"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/StorageManagerService$6;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$3302(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)Landroid/os/IStoraged;

    iget-object v0, p0, Lcom/android/server/StorageManagerService$6;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->connect()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3400(Lcom/android/server/StorageManagerService;)V

    return-void
.end method
