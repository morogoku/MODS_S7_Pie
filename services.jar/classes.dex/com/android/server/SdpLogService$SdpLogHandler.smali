.class Lcom/android/server/SdpLogService$SdpLogHandler;
.super Landroid/os/Handler;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpLogHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpLogService.Handler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpLogService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/SdpLogService$SdpLogHandler;->this$0:Lcom/android/server/SdpLogService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/SdpLogService$SdpLogHandler;->this$0:Lcom/android/server/SdpLogService;

    # invokes: Lcom/android/server/SdpLogService;->markTheBeginning()V
    invoke-static {v0}, Lcom/android/server/SdpLogService;->access$000(Lcom/android/server/SdpLogService;)V

    goto :goto_19

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const-string v0, "Save into File!"

    # invokes: Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/SdpLogService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SdpLogService$SdpLogHandler;->this$0:Lcom/android/server/SdpLogService;

    # invokes: Lcom/android/server/SdpLogService;->saveToFile()V
    invoke-static {v0}, Lcom/android/server/SdpLogService;->access$200(Lcom/android/server/SdpLogService;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    goto :goto_25

    :catch_1a
    move-exception v0

    const-string v1, "SdpLogService.Handler"

    const-string v2, "Exception occurred during message handling..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method
