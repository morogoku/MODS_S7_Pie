.class Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field final synthetic val$this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->val$this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    goto :goto_11

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOn()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$17000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V

    goto :goto_11

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOff()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$17100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V

    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
