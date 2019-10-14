.class Lcom/android/server/power/ShutdownThread$2;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "screen off intent, dismiss confirm dialog"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lcom/android/server/power/ShutdownThread;->initBixbyVariables()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()V

    # getter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1100()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    # getter for: Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1200()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_25
    return-void
.end method
