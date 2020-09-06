.class Lcom/android/server/power/PowerManagerService$19;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->startSmartStayLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "undefined message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleAbuseWakelockWhenUseractivityChanged()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7700(Lcom/android/server/power/PowerManagerService;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$17700(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_37

    :pswitch_2b
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleAbuseWakelockWhenUseractivityChanged()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7700(Lcom/android/server/power/PowerManagerService;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$17700(Lcom/android/server/power/PowerManagerService;Z)V

    nop

    :goto_37
    return-void

    nop

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
