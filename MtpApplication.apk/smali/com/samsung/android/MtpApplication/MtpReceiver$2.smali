.class Lcom/samsung/android/MtpApplication/MtpReceiver$2;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "MTPRx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification from stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v3, v0, :cond_0

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mtp_sync_alive"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSyncFinished()V

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x5

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xcc

    if-eq v0, v3, :cond_e

    const/4 v0, 0x4

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_e

    const/16 v0, 0xa

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mtp_sync_alive"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->finishSync()V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSyncFinished()V

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0xf

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_4

    const-string v0, "MTPRx"

    const-string v3, "Condition matched"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mtp_sync_alive"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_13

    const-string v0, "MTPRx"

    const-string v1, "Booster matched. Calling for boosting again."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$200(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V

    goto/16 :goto_4

    :cond_4
    const/16 v0, 0xcd

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MTPRx"

    const-string v2, "USB removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    goto/16 :goto_4

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xe

    if-ne v3, v0, :cond_d

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    const-string v0, "MTPRx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open session has come  remove the  Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mtp_open_session"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "dev.mtp.opensession"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v3}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$300(Lcom/samsung/android/MtpApplication/MtpReceiver;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_mtp_settings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_6

    iget-object v4, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$400(Lcom/samsung/android/MtpApplication/MtpReceiver;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getUsbdebugStatus()Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    if-eqz v4, :cond_8

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->isExistGUID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    sget-boolean v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-nez v4, :cond_8

    sget-boolean v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDayDreamConnected:Z

    if-nez v4, :cond_8

    const-string v4, "MTPRx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone is already authorized. enableMtpSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    sget-boolean v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    if-nez v4, :cond_7

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v4, :cond_7

    const-string v4, "MTPRx"

    const-string v5, "Phone is unlocked."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mtp_drive_display"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "dev.kies.drivedisplay"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dev.kies.drivedisplay.trust"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V

    goto :goto_0

    :cond_7
    const-string v4, "MTPRx"

    const-string v5, "Phone is authorized, but secure lock."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "dev.kies.drivedisplay.trust"

    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_mtp_settings"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$502(Lcom/samsung/android/MtpApplication/MtpReceiver;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$600(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$602(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;

    :cond_9
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->policyStatusSet:Z

    if-eqz v1, :cond_a

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f050015

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$600(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$500(Lcom/samsung/android/MtpApplication/MtpReceiver;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "MTPRx"

    const-string v2, "phone is recovery status, so do not showing MTP trust pop-up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDayDreamConnected:Z

    if-nez v1, :cond_c

    const-string v1, "MTPRx"

    const-string v2, "Show popup for trust mtp"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    const-string v2, "TRUSTMTP"

    invoke-virtual {v1, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayPopup(Ljava/lang/String;)V

    :cond_c
    :goto_1
    goto/16 :goto_4

    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x15

    if-ne v2, v0, :cond_13

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    const-string v0, "MTPRx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Error Came "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "MTPRx"

    const-string v1, "Read Error Came so calling usbRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    goto/16 :goto_4

    :cond_e
    :goto_2
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mtp_sync_alive"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "MTPRx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside Syncronising"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$200(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V

    :cond_f
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mtp_sync_alive"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mtp_sync_alive"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_10
    const-string v0, "MTPRx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside Syncronising"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->access$200(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V

    :cond_11
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_sync_alive"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.MtpApplication"

    const-string v2, "com.samsung.android.MtpApplication.MtpApplication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_12

    :try_start_0
    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "MTPRx"

    const-string v3, "Activity not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_3
    nop

    :cond_13
    :goto_4
    return-void
.end method
