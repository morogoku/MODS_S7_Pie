.class Lcom/android/server/policy/SamsungPhoneWindowManager$9;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.capture.QuickPanelCapture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    const-string v1, "SamsungPhoneWindowManager"

    const-string v4, "QuickPanelCapture, so takeScreenshot"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v3, v2, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_be

    :cond_2b
    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    const/4 v4, 0x5

    invoke-direct {v1, v3, v3, v2, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4a

    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "Bixby Capture, so shareScreenshot"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->setBundle(Landroid/os/Bundle;)V

    goto :goto_51

    :cond_4a
    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "Bixby Capture, so takeScreenshot"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v4, v5, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_be

    :cond_60
    const-string v1, "com.samsung.android.capture.DesktopCapture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DesktopCapture, so takeScreenshot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Fullscreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v2, :cond_a3

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-direct {v2, v3, v3, v5, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v4, v5, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_be

    :cond_a3
    const-string v2, "Region"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v4, v5, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_be
    :goto_be
    return-void
.end method
