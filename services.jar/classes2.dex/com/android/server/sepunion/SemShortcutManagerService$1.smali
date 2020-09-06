.class Lcom/android/server/sepunion/SemShortcutManagerService$1;
.super Ljava/lang/Object;
.source "SemShortcutManagerService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemShortcutManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutChanged(Ljava/lang/String;I)V
    .registers 13

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    const-string v1, "SemExecuteManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShortcutChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$200(Lcom/android/server/sepunion/SemShortcutManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "SemExecuteManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onShortcutChanged: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move v4, v3

    :goto_4e
    if-ge v4, v2, :cond_8f

    iget-object v5, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # invokes: Lcom/android/server/sepunion/SemShortcutManagerService;->makeIntent(Ljava/lang/String;I)Landroid/content/Intent;
    invoke-static {v5, p1, p2}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$300(Lcom/android/server/sepunion/SemShortcutManagerService;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    const-string v7, "SemExecuteManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onShortcutChanged: send callback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_5 .. :try_end_7e} :catchall_91

    :try_start_7e
    iget-object v7, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$400(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v3, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_87
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7e .. :try_end_87} :catch_88
    .catchall {:try_start_7e .. :try_end_87} :catchall_91

    goto :goto_8c

    :catch_88
    move-exception v7

    :try_start_89
    invoke-virtual {v7}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_8f
    monitor-exit v0

    return-void

    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_91

    throw v1
.end method
