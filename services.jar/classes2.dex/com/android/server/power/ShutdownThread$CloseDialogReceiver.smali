.class Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field public dialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    # getter for: Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3600()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_a
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    # getter for: Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2600()Z

    move-result v1

    if-nez v1, :cond_1a

    # getter for: Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3400()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$3802(Z)Z

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string/jumbo v1, "shutdown_confirm_dialog_close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_17
    # invokes: Lcom/android/server/power/ShutdownThread;->initBixbyVariables()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()V

    :cond_1a
    return-void
.end method
