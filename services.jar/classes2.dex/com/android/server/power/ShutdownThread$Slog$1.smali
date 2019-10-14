.class Lcom/android/server/power/ShutdownThread$Slog$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$Slog;->startState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Slog;->access$4302(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4400()Z

    move-result v0

    if-nez v0, :cond_59

    const-string/jumbo v0, "recovery"

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string/jumbo v0, "recovery-update"

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_59

    :cond_25
    :try_start_25
    # getter for: Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4500()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "ShutdownDelay"

    const-string v1, "!@ShutdownThread.run() : checking timeout, done."

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V

    const-string v0, "ShutdownDelay"

    const-string v1, "!@delayDumpLock released"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_42} :catch_45
    .catchall {:try_start_25 .. :try_end_42} :catchall_43

    goto :goto_49

    :catchall_43
    move-exception v0

    goto :goto_51

    :catch_45
    move-exception v0

    :try_start_46
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_43

    :goto_49
    # getter for: Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4500()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_73

    :goto_51
    # getter for: Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4500()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_59
    :goto_59
    const-string v0, "ShutdownDelay"

    const-string v1, "!@ShutdownThread.run() : Checking timeout, done. Try force shutdown again."

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2700()Z

    move-result v1

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_73
    return-void
.end method
