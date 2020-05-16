.class Lcom/android/server/DirEncryptServiceHelper$1$1;
.super Ljava/lang/Thread;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DirEncryptServiceHelper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DirEncryptServiceHelper$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptServiceHelper$1;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "Unmount policy noti pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v1, v1, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$100(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7d

    :cond_3e
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v1, v1, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Z

    move-result v1

    if-nez v1, :cond_51

    return-void

    :cond_51
    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "Switch User"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v1, v1, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v1

    if-eqz v1, :cond_7d

    :try_start_62
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v1, v1, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$300(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v1, v1, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$300(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_78} :catch_79

    goto :goto_7d

    :catch_79
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7d
    :goto_7d
    return-void
.end method
