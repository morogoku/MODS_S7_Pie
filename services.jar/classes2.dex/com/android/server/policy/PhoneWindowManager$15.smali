.class Lcom/android/server/policy/PhoneWindowManager$15;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
	
	const-string/jumbo v0, "android.goto.recovery"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
	
	if-eqz v0, :cond_gogo
	
	iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;
	
	invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->gotoRecovery()V
	
	return-void
	
	:cond_gogo
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    goto :goto_2d

    :cond_18
    :try_start_18
    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v2

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v0

    :goto_2d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2200(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    monitor-exit v0

    return-void

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_41

    throw v1
.end method
