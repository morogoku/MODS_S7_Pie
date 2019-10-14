.class Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    return-void

    :cond_12
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto/16 :goto_b6

    :cond_24
    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v4, "enable"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "lock_to_app_exit_locked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_48

    :cond_47
    move v2, v3

    :goto_48
    move v1, v2

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v2, v2, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    if-nez v2, :cond_56

    if-eqz v1, :cond_56

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->hideImeNotification()V
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$700(Lcom/android/server/InputMethodManagerService;)V

    :cond_56
    return-void

    :cond_57
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/InputMethodManagerService;->onActionLocaleChanged()V

    goto :goto_b5

    :cond_65
    const-string v1, "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b5

    :cond_79
    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isDeskTopMode()Z
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$800(Lcom/android/server/InputMethodManagerService;)Z

    move-result v1

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/InputMethodManagerService;->isDexDualViewModeEnable()Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "InputMethodManagerService"

    const-string v2, "Status-bar Animating : Hide Keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_b5

    :cond_9f
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    :goto_b5
    return-void

    :cond_b6
    :goto_b6
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    return-void
.end method
