.class final Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    new-instance v2, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;)V

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$202(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "AfterimageCompensationService"

    const-string v2, "AFC Thread Start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_32
    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAfcState is already done - mAfcState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-void

    :cond_4f
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_on_intent()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void

    :cond_5d
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_off_intent()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void

    :cond_6b
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShutdownReceiver: onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-ltz v1, :cond_db

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_db

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-lez v1, :cond_db

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    const v2, 0x10c8e0

    if-gt v1, v2, :cond_db

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->writeLoggingDataEfs()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto :goto_db

    :cond_b3
    const-string v1, "com.sec.android.app.server.power.DISPLAY_ON_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "display_on_time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v2

    if-eqz v2, :cond_da

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v2

    if-nez v2, :cond_da

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->display_compensation(I)V
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    :cond_da
    return-void

    :cond_db
    :goto_db
    return-void
.end method
