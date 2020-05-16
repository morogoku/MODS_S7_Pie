.class public Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;
.super Landroid/os/Handler;
.source "KeyguardTouchLockScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TimeOutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardTouchLockScreenManager"

    const-string/jumbo v1, "screenOffTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;->this$0:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->access$000(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;)Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutCallback;->onTimeOut()V

    :goto_0
    return-void
.end method
