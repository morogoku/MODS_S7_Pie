.class Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;
.super Landroid/os/Handler;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;

    iput-object p3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;

    if-eqz v1, :cond_36

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v1
.end method
