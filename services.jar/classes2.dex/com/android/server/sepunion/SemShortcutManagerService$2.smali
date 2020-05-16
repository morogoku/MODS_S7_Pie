.class Lcom/android/server/sepunion/SemShortcutManagerService$2;
.super Landroid/os/Handler;
.source "SemShortcutManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemShortcutManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e6

    if-eq v0, v1, :cond_1f

    const-string v0, "SemExecuteManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: default case msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_1f
    const-string v0, "SemExecuteManagerService"

    const-string v1, "handleMessage: MSG_START_SCAN received. Start scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # invokes: Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V
    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$500(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    nop

    :goto_2c
    return-void
.end method
