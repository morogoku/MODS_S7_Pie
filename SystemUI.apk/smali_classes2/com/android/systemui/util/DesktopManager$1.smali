.class Lcom/android/systemui/util/DesktopManager$1;
.super Ljava/lang/Object;
.source "DesktopManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "onBindingDied"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/util/DesktopManager;->access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;

    const-string v0, "DesktopManager"

    const-string v1, "onBindingDied-Unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$400(Lcom/android/systemui/util/DesktopManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DesktopManager"

    const-string v1, "onBindingDied-Reconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$500(Lcom/android/systemui/util/DesktopManager;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$300(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager$Callback;->onBindingDied()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "DesktopManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p2}, Lcom/android/internal/desktop/IDesktopBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/desktop/IDesktopBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/util/DesktopManager;->access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/desktop/IDesktopBar;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/DesktopManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/DesktopManager$1$1;-><init>(Lcom/android/systemui/util/DesktopManager$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/util/DesktopManager;->access$100(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBarCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/desktop/IDesktopBar;->setDesktopBarCallback(Lcom/android/internal/desktop/IDesktopBarCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$200(Lcom/android/systemui/util/DesktopManager;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyExitKeyguardAnimationIfNeeded()V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$200(Lcom/android/systemui/util/DesktopManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifySimStateInitInfo()V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$200(Lcom/android/systemui/util/DesktopManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyRemoteLockState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$300(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager$Callback;->onServiceConnected()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/util/DesktopManager;->access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$300(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager$Callback;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method
