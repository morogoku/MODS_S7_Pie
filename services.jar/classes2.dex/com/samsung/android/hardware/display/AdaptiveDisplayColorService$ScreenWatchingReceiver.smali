.class final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "mDNIe"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/display/SemMdnieManager;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;
    invoke-static {v1, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "DisplaySolution"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    invoke-static {v1, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$302(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$402(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    :cond_48
    return-void

    :cond_49
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$402(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    :cond_66
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_on_intent()V
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void

    :cond_6c
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_off_intent()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void

    :cond_7a
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$402(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    return-void

    :cond_89
    return-void
.end method
