.class Lcom/android/server/StorageManagerService$DefaultContainerConnection;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultContainerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
