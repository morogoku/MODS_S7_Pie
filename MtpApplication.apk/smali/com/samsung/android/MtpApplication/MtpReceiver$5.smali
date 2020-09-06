.class Lcom/samsung/android/MtpApplication/MtpReceiver$5;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/16 v4, 0x74

    if-eq v0, v4, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string v0, "MTPRx"

    const-string v1, " Default case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "MTPRx"

    const-string v1, "restarting MTP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "MTPRx"

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$900(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "MTPRx"

    const-string v4, "calling native method"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v4, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v4, v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "MTPRx"

    const-string v4, "Checking the driver time out"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$700(Lcom/samsung/android/MtpApplication/MtpReceiver;I)V

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const-string v0, "MTPRx"

    const-string v1, "called native method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    :cond_1
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v0, v3}, Landroid/mtp/MTPJNIInterface;->setMediaScannerStatus(I)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "MTPRx"

    const-string v1, "MTP can be launched"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    const-string v0, "MTPRx"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0xca

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$800(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;I)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "MTPRx"

    const-string v1, "calling native method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "MTPRx"

    const-string v1, "calling native method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "MTPRx"

    const-string v1, "calling native method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "MTPRx"

    const-string v1, "calling native method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "MTPRx"

    const-string v1, "set MTPCATEGORY enable flag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v0, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$1002(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    const-string v0, "dev.mtp.opensession"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$1000()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const-string v0, "MTPRx"

    const-string v1, "DRIVER_TIME_OUT 60s lapsed, but Factory mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpService;->isUsbDisconnected()Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const-string v0, "MTPRx"

    const-string v1, "DRIVER_TIME_OUT 60s lapsed, but do not started activity for popup."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    if-nez v0, :cond_7

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const-string v0, "MTPRx"

    const-string v1, "DRIVER_TIME_OUT 60s lapsed, but this case is usb_data_unlock is false case."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    if-ne v1, v0, :cond_8

    const-string v0, "1"

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "MTPRx"

    const-string v1, "DRIVER_TIME_OUT 60s lapsed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    const-string v1, "still no open session command from host, so toast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    const-string v1, "TIMEOUT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayPopup(Ljava/lang/String;)V

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
