.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->animateDismiss()V
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
    .registers 3

    const-string v0, "ShutdownThread"

    const-string v1, "dismiss shutdownConfirmByBixby"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lcom/android/server/power/ShutdownThread;->initBixbyVariables()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()V

    # getter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1100()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
