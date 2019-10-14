.class Lcom/android/server/DeviceIdleController$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v2

    :try_start_17
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0xa200

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_48

    iget-object v4, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    # invokes: Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistUserAppForcedInternal(Ljava/lang/String;I)Z
    invoke-static {v4, v5, v6}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)V

    iget-object v4, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)V
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_48} :catch_4b
    .catchall {:try_start_17 .. :try_end_48} :catchall_49

    :cond_48
    goto :goto_4c

    :catchall_49
    move-exception v3

    goto :goto_4e

    :catch_4b
    move-exception v3

    :goto_4c
    :try_start_4c
    monitor-exit v2

    goto :goto_50

    :goto_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    throw v3

    :cond_50
    :goto_50
    return-void
.end method
