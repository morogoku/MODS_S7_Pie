.class Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
.super Ljava/lang/Thread;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashNotiThread"
.end annotation


# instance fields
.field private final mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

.field private mForceStop:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    return-object v0
.end method

.method private delay(J)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v4

    :goto_10
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-eqz v4, :cond_15

    goto :goto_1f

    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v2, v4

    cmp-long v4, p1, v0

    if-gtz v4, :cond_b

    :cond_1f
    :goto_1f
    return-void
.end method

.method private startFlashNoti()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mType:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9800(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    if-ltz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # operator-- for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9810(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_44

    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doFlashNoti(Z)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9900(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$10000(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->delay(J)V

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-eqz v0, :cond_33

    goto :goto_44

    :cond_33
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doFlashNoti(Z)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9900(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$10100(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->delay(J)V

    goto :goto_1

    :cond_44
    :goto_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public run()V
    .registers 5

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_55

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->startFlashNoti()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_4a

    :try_start_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_55

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_31

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9602(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    :cond_31
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->unlinkFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    invoke-static {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    :cond_40
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9202(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_47

    throw v1

    :catchall_4a
    move-exception v0

    :try_start_4b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_55

    throw v0
.end method
