.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field final synthetic val$connectionStartTime:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-wide p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$connectionStartTime:J

    iput-object p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionResult(Z)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionResult : success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / elapsed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$connectionStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$100(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->disconnect()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$202(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$302(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z

    invoke-static {}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveImageInBackgroundTask : Disconnect ScrollCapture service because saving image failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    if-ne p1, v3, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "originId"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$400(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "rotation"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$500(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "captureMode"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$600(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "captureDisplay"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$700(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "safeInsetLeft"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$800(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "safeInsetTop"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$900(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "safeInsetRight"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1000(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "safeInsetBottom"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1100(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$600(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isAutoCropSupported(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "statusBarVisible"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "navigationBarVisible"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1300(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "statusBarHeight"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1400(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "navigationBarHeight"

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1500(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1600(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "isSmartCaptureVisible"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1700(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1800(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2, v0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->notifyGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SaveImageInBackgroundTask : Failed to connect to ScrollCapture service"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$202(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$302(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$1902(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_1
    return-void
.end method
