.class Lcom/android/keyguard/KeyguardSecSecurityContainer$1;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZI)Z

    return-void
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 5

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x20000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "KeyguardSecSecurityView"

    const-string v3, "Alarm manager have ACTION_BIOMETRIC_LOCKOUT_RESET then will be canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$200(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$300(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.password.ChooseLockGeneric$InternalActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "confirm_credentials"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v0, p1, p3}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->reportFailedUnlockAttempt(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFailedUnlockAttemptChanged()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    :cond_0
    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$500(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
