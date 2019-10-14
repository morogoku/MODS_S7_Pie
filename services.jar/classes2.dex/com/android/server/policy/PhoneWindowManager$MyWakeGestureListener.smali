.class Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;
.super Lcom/android/server/policy/WakeGestureListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWakeGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WakeGestureListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onWakeUp()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2200(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2300(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$2400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
