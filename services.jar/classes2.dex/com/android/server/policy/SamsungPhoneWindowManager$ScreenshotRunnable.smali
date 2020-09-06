.class Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field mConn:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1
.end method
