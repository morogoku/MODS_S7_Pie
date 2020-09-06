.class final Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;
.super Landroid/os/Handler;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/MtpApplication/MtpService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage. msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$002(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getMtpContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$102(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v0}, Lcom/samsung/android/MtpApplication/MtpService;->access$100(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MtpService"

    const-string v1, "mContext is NULL so getting the getApplicationContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$102(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v0}, Lcom/samsung/android/MtpApplication/MtpService;->access$100(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$200(Lcom/samsung/android/MtpApplication/MtpService;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "MtpService"

    const-string v1, "mContext is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
