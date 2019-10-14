.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10c

    packed-switch v0, :pswitch_data_122

    goto/16 :goto_10a

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/input/InputManagerService;->sendVRTAEventChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$2100(Lcom/android/server/input/InputManagerService;I)V

    goto/16 :goto_10a

    :pswitch_19
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/input/InputManagerService;->sendVRProximityEventChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;I)V

    goto/16 :goto_10a

    :pswitch_28
    const-string v0, "InputManager"

    const-string v1, "MSG_UPDATE_DEFAULT_KEYBOARD_LAYOUTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1600(Lcom/android/server/input/InputManagerService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_38

    return-void

    :cond_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    if-nez v2, :cond_4f

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mEnabledSubtypeIds:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$1700(Lcom/android/server/input/InputManagerService;)Ljava/util/List;

    move-result-object v4

    goto :goto_55

    :cond_4f
    const-string v4, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-static {v4, v2}, Lcom/android/server/input/KeyboardLayoutUtils;->getEnabledSubtypeIdsOf(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    :goto_55
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mEnabledSubtypeIds:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->access$1700(Lcom/android/server/input/InputManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/input/KeyboardLayoutUtils;->isSubtypeListChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_74

    iget-object v7, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mEnabledSubtypeIds:Ljava/util/List;
    invoke-static {v7, v4}, Lcom/android/server/input/InputManagerService;->access$1702(Lcom/android/server/input/InputManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v8, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mEnabledSubtypeIds:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/input/InputManagerService;->access$1700(Lcom/android/server/input/InputManagerService;)Ljava/util/List;

    move-result-object v8

    # invokes: Lcom/android/server/input/InputManagerService;->updateDefaultKeyboardLayoutsForAll(Ljava/util/List;)V
    invoke-static {v7, v8}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    goto/16 :goto_10a

    :cond_74
    if-eqz v1, :cond_10a

    const-string v7, "com.sec.android.inputmethod"

    const-string v8, "com.sec.android.inputmethod"

    iget-object v9, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v9}, Lcom/android/server/input/InputManagerService;->access$1600(Lcom/android/server/input/InputManagerService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/input/KeyboardLayoutUtils;->getInputMethodInfoOf(Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v10, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mEnabledSubtypeIds:Ljava/util/List;
    invoke-static {v10}, Lcom/android/server/input/InputManagerService;->access$1700(Lcom/android/server/input/InputManagerService;)Ljava/util/List;

    move-result-object v10

    # invokes: Lcom/android/server/input/InputManagerService;->updateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V
    invoke-static {v9, v1, v8, v10}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V

    goto/16 :goto_10a

    :pswitch_95
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/input/InputManagerService;->showTouchpadOnOffToast(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$1500(Lcom/android/server/input/InputManagerService;I)V

    goto :goto_10a

    :pswitch_a3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    invoke-static {v4, v0, v2, v3}, Lcom/android/server/input/InputManagerService;->access$1400(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_10a

    :pswitch_ba
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_10a

    :pswitch_dc
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)V

    goto :goto_10a

    :pswitch_e2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)V

    goto :goto_10a

    :pswitch_e8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;)V

    goto :goto_10a

    :pswitch_ee
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    # invokes: Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    goto :goto_10a

    :pswitch_100
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputDevice;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$1000(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    nop

    :cond_10a
    :goto_10a
    return-void

    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_100
        :pswitch_ee
        :pswitch_e8
        :pswitch_e2
        :pswitch_dc
        :pswitch_ba
        :pswitch_a3
        :pswitch_95
        :pswitch_28
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x10
        :pswitch_19
        :pswitch_a
    .end packed-switch
.end method
