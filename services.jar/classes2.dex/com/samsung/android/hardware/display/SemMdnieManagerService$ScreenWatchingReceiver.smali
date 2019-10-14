.class final Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$200(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1, v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$102(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$200(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_mode_automatic_setting"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_38

    goto :goto_39

    :cond_38
    move v3, v2

    :goto_39
    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z
    invoke-static {v1, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$302(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$200(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$402(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)I

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$300(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    const/4 v2, 0x4

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$402(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)I

    :cond_61
    const-string v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOOT_ON - mScreenMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$400(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mAutoModeEnabled - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z
    invoke-static {v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$300(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$500(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    if-nez v1, :cond_9b

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$600(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :cond_9b
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$400(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v2

    # invokes: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$700(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_c0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$800(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b0
    const-string v2, "/sys/class/mdnie/mdnie/mode"

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$400(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v3

    # invokes: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z
    invoke-static {v2, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$900(Ljava/lang/String;I)Z

    monitor-exit v1

    goto :goto_c0

    :catchall_bd
    move-exception v2

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_b0 .. :try_end_bf} :catchall_bd

    throw v2

    :cond_c0
    :goto_c0
    return-void

    :cond_c1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z
    invoke-static {v1, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$1002(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z
    invoke-static {v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$1000(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v2

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$1102(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    return-void

    :cond_da
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$1002(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z
    invoke-static {v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$1000(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v2

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$1102(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    return-void

    :cond_f3
    return-void
.end method
