.class Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;
.super Landroid/os/Handler;
.source "LogWritter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/LogWritter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveLogHandler"
.end annotation


# instance fields
.field data:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/LogWritter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->data:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->data:Landroid/os/Bundle;

    const-string/jumbo v1, "swap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    # getter for: Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->access$000(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    # getter for: Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->access$100(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/IObserver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyReadyToDump(Z)V

    goto :goto_4d

    :cond_26
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->data:Landroid/os/Bundle;

    const-string/jumbo v1, "log"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    # getter for: Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->access$000(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->data:Landroid/os/Bundle;

    const-string/jumbo v2, "log"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->write(Ljava/lang/String;)V

    goto :goto_4d

    :cond_44
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    # getter for: Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->access$000(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    :goto_4d
    return-void
.end method