.class Lcom/samsung/android/MtpApplication/USBConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "USBConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/USBConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/USBConnection;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/USBConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/USBConnection$1;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.samsung.mtp.usbremoval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MTPUSBConnection"

    const-string v2, "USB removal is call, so finish popup."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/USBConnection$1;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    :cond_1
    return-void
.end method
