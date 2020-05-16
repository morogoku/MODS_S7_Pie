.class Lcom/android/server/StorageManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
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

    iput-object p1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :try_start_14
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v2, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$1700(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IVold;->onUserAdded(II)V

    goto :goto_88

    :cond_38
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    iget-object v3, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$2100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    monitor-enter v3
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_47} :catch_89

    :try_start_47
    iget-object v4, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$2100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    nop

    :goto_52
    if-ge v2, v4, :cond_7a

    iget-object v5, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$2100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    iget v6, v5, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v6, v1, :cond_77

    const/16 v6, -0x2710

    iput v6, v5, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iget-object v6, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
    invoke-static {v6}, Lcom/android/server/StorageManagerService;->access$2000(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v5}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_47 .. :try_end_7b} :catchall_85

    :try_start_7b
    iget-object v2, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/IVold;->onUserRemoved(I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_84} :catch_89

    goto :goto_88

    :catchall_85
    move-exception v2

    :try_start_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v2
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_89

    :cond_88
    :goto_88
    goto :goto_8f

    :catch_89
    move-exception v2

    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Lcom/android/server/utils/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8f
    return-void
.end method
