.class Lcom/android/systemui/lockstar/PluginLockStarManager$2;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goToLockedShade()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    return-void
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    return v0
.end method

.method public makeExpandedInvisible()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisibleWrapper()V

    return-void
.end method

.method public onLaunchTransitionFadingEnded()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEndedWrapper()V

    return-void
.end method

.method public requestDismissKeyguard(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDismissKeyguard() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->startActivity(Landroid/app/PendingIntent;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public setBiometricRecognition(Z)V
    .locals 3

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBiometricRecognition() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBiometricRecognition(Z)V

    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockClock;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/lockstar/component/PluginLockClock;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/lockstar/component/PluginLockClock;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$602(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockClock;)Lcom/android/systemui/lockstar/component/PluginLockClock;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$800(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/lockstar/component/PluginLockHelpText;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$802(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockHelpText;)Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$900(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockNotification;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/lockstar/component/PluginLockNotification;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/lockstar/component/PluginLockNotification;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$902(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockNotification;)Lcom/android/systemui/lockstar/component/PluginLockNotification;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1000(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockSecure;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/lockstar/component/PluginLockSecure;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/lockstar/component/PluginLockSecure;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1002(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockSecure;)Lcom/android/systemui/lockstar/component/PluginLockSecure;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1100(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1102(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockServiceBox;)Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1200(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/lockstar/component/PluginLockShortcut;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1202(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockShortcut;)Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1300(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/lockstar/component/PluginLockSwipe;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1302(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockSwipe;)Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1402(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockWallpaper;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setWallpaperUpdateCallback(Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;)V

    :cond_8
    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDynamicLockData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/android/systemui/lockstar/model/DynamicLockData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/model/DynamicLockData;

    const-string v2, "PluginLockStarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDynamicLockData() currData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PluginLockStarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDynamicLockData() newData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockClock;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockClock;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$900(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$800(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1000(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockSecure;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockSecure;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1100(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1200(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockShortcut;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1300(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1602(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/model/DynamicLockData;)Lcom/android/systemui/lockstar/model/DynamicLockData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_9
    :goto_1
    const-string v0, "PluginLockStarManager"

    const-string/jumbo v1, "wrong request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPluginLockWallpaper(IILjava/lang/String;)V
    .locals 3

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPluginLockWallpaper() wallpaperType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->reset(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->update(Landroid/content/Context;IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTimeOut(Z)V
    .locals 3

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTimeOut() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScreenTimeOut(Z)V

    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 5

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDynamicLockData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/android/systemui/lockstar/model/DynamicLockData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/model/DynamicLockData;

    const-string v2, "PluginLockStarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDynamicLockData() currData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PluginLockStarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDynamicLockData() newData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicClockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockClock;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockClock;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicNotiIconEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$900(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$800(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1000(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockSecure;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockSecure;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1100(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1200(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockShortcut;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1300(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1602(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/model/DynamicLockData;)Lcom/android/systemui/lockstar/model/DynamicLockData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->userActivity()V

    return-void
.end method
