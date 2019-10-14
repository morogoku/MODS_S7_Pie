.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skipping screenshot because storage is locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$102(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_3

    move v4, v5

    nop

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_4

    move v3, v5

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_5

    move v4, v5

    nop

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_7

    move v3, v5

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_8

    move v4, v5

    nop

    :cond_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotWindow(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
