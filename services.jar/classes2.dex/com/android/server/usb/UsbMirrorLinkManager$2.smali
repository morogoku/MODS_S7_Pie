.class Lcom/android/server/usb/UsbMirrorLinkManager$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->sync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$300(Lcom/android/server/usb/UsbMirrorLinkManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4b

    const-string v2, "connected"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v5, "ncm"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v2, :cond_45

    if-eqz v5, :cond_45

    iget-object v6, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v6, v6, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    sget-object v7, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    if-ne v6, v7, :cond_45

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "usb: usb state msg has been received and starting ncm tethering"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v7, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/usb/UsbMirrorLinkManager;->semSetNcm(Landroid/content/Context;Z)V
    invoke-static {v6, v7, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$700(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    sget-object v6, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START_NCM_CALLED:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iput-object v6, v3, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    :cond_45
    if-nez v2, :cond_4a

    # setter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mDisconnectConfirmed:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$802(Z)Z

    :cond_4a
    goto :goto_5f

    :cond_4b
    const-string v2, "com.android.server.usb.ML_DISCONNECT_CONFIRM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MIRRORLINK_DISCONNECT_CONFIRM_ACTION"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mDisconnectConfirmed:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$802(Z)Z

    :cond_5f
    :goto_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_61

    throw v1
.end method
