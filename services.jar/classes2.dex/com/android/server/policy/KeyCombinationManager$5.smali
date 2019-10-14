.class Lcom/android/server/policy/KeyCombinationManager$5;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCombinationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/KeyCombinationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$5;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$5;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    iget-object v0, v0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_f

    const-string v0, "KeyCombinationManager"

    const-string v1, "Stop Lock Task Mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "KeyCombinationManager"

    const-string v2, "Unable to reach activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method
