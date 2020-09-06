.class Lcom/android/server/usb/UsbNotificationHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->res:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->curLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Current Locale is same as received Locale"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_37
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Current Locale is different from received Locale"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # setter for: Lcom/android/server/usb/UsbNotificationHandler;->curLocale:Ljava/util/Locale;
    invoke-static {v3, v0}, Lcom/android/server/usb/UsbNotificationHandler;->access$202(Lcom/android/server/usb/UsbNotificationHandler;Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbNotificationHandler;->reflashNotificaton()V

    :goto_4c
    return-void
.end method
