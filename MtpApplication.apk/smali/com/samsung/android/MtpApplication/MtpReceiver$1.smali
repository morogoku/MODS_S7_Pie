.class Lcom/samsung/android/MtpApplication/MtpReceiver$1;
.super Landroid/os/UEventObserver;
.source "MtpReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/MtpReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    const-string v0, "USB_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "MTPRx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state from USB_STATE event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$000(Lcom/samsung/android/MtpApplication/MtpReceiver;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTPRx"

    const-string v2, "stop observing and calling usbRemoved "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$100(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/os/UEventObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    goto :goto_0

    :cond_0
    const-string v1, "MTPRx"

    const-string v3, "ignore this event"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    if-ne v1, v2, :cond_2

    const-string v1, "CONFIGURED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput v2, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    goto :goto_0

    :cond_2
    const-string v1, "CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    if-nez v1, :cond_3

    const-string v1, "MTPRx"

    const-string v2, "CONNECTED has come after switching the user call usbRemoved "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$100(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/os/UEventObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    :cond_3
    :goto_0
    return-void
.end method
