.class Lcom/android/server/AppOpsService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I
    invoke-static {}, Lcom/android/server/AppOpsService;->access$100()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_3e

    aget v5, v1, v4

    iget-object v6, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v6

    :try_start_14
    iget-object v7, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    iget-object v7, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    if-nez v7, :cond_22

    monitor-exit v6

    goto :goto_38

    :cond_22
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v7, v8

    monitor-exit v6
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_3b

    move v6, v3

    :goto_2a
    array-length v8, v0

    if-ge v6, v8, :cond_38

    aget-object v8, v0, v6

    iget-object v9, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    const/4 v10, -0x1

    # invokes: Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    invoke-static {v9, v7, v5, v10, v8}, Lcom/android/server/AppOpsService;->access$200(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_38
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1

    :cond_3e
    return-void
.end method
