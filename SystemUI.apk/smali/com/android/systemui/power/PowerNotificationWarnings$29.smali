.class Lcom/android/systemui/power/PowerNotificationWarnings$29;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$wmService:Landroid/view/IWindowManager;


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const-string v0, "PowerUI.Notification"

    const-string v1, "UnintentionalLcdOnPopUp is dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2600(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2600(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    const-string v0, "PowerUI.Notification"

    const-string v2, "DISABLE_RECENT is cleared"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->val$wmService:Landroid/view/IWindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->val$wmService:Landroid/view/IWindowManager;

    const/16 v2, 0xbb

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->val$component:Landroid/content/ComponentName;

    invoke-interface {v0, v2, v3, v1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2702(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2802(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
