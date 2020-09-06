.class Lcom/android/server/usb/UsbMirrorLinkManager$3;
.super Landroid/os/Handler;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$900(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/Handler;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connect_in_call_popup_msg"

    # invokes: Lcom/android/server/usb/UsbMirrorLinkManager;->getStringIdFromMirrorLinkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1000(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # setter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z
    invoke-static {v1, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1102(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z

    goto :goto_78

    :cond_2e
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_53

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connect_pin_window_popup_msg"

    # invokes: Lcom/android/server/usb/UsbMirrorLinkManager;->getStringIdFromMirrorLinkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1000(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # setter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z
    invoke-static {v1, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1202(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z

    goto :goto_78

    :cond_53
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_78

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connect_in_voice_assistant_popup_msg"

    # invokes: Lcom/android/server/usb/UsbMirrorLinkManager;->getStringIdFromMirrorLinkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1000(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # setter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z
    invoke-static {v1, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1302(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z

    :cond_78
    :goto_78
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7 .. :try_end_7c} :catchall_7a

    throw v1
.end method
