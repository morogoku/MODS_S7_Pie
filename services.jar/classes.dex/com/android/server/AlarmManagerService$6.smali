.class Lcom/android/server/AlarmManagerService$6;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    goto :goto_22

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/AlarmManagerService;->restoreDisallowedAlarmList(Z)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;Z)V

    goto :goto_22

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/AlarmManagerService;->restoreDisallowedAlarmList(Z)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;Z)V

    goto :goto_22

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList(I)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;I)V

    goto :goto_22

    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList(I)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;I)V

    nop

    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_14
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
