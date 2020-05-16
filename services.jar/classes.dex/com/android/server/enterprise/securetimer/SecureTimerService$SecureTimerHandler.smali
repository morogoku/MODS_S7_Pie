.class Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;
.super Landroid/os/Handler;
.source "SecureTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureTimerHandler"
.end annotation


# static fields
.field public static final TRIGGER_ALARM_EVENT:I = 0x1

.field public static final UPDATE_TICK_THREAD_EXCEPTION_EVENT:I = 0x3

.field public static final UPDATE_TICK_THREAD_INIT_EVENT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;Lcom/android/server/enterprise/securetimer/SecureTimerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    if-eqz p1, :cond_29

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_29

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->notifyUpdateTickException()V
    invoke-static {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1200(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    goto :goto_29

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->initUpdateTickThread()V
    invoke-static {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1100(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    goto :goto_29

    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    const-string/jumbo v2, "index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteAlarmRecords(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1000(Lcom/android/server/enterprise/securetimer/SecureTimerService;Ljava/lang/String;)Z

    nop

    :cond_29
    :goto_29
    return-void

    nop

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
