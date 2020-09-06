.class final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplaySolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "AdaptiveDisplaySolutionService"

    const-string v2, "ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    # invokes: Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_boot_completed_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->access$100(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void

    :cond_2f
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "AdaptiveDisplaySolutionService"

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    # invokes: Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_screen_on_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->access$200(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void

    :cond_44
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const-string v1, "AdaptiveDisplaySolutionService"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    # invokes: Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_screen_off_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->access$300(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void

    :cond_59
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string v1, "AdaptiveDisplaySolutionService"

    const-string v2, "ACTION_USER_PRESENT"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    # invokes: Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_user_present_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->access$400(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void

    :cond_6e
    return-void
.end method
