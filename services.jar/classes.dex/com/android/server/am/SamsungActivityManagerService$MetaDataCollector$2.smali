.class Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MetaDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive: begin action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    move-object v1, v3

    :cond_41
    const-string v2, "MetaDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive: done pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5b

    return-void

    :cond_5b
    :try_start_5b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    monitor-enter v3
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6c} :catch_76

    :try_start_6c
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V
    invoke-static {v4, v2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$400(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Landroid/content/pm/ApplicationInfo;)V

    monitor-exit v3

    goto :goto_96

    :catchall_73
    move-exception v4

    monitor-exit v3
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_73

    :try_start_75
    throw v4
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_76} :catch_76

    :catch_76
    move-exception v2

    const-string v3, "MetaDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getApplicationInfo: failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_96
    return-void
.end method
