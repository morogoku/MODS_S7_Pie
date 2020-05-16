.class Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipeConfirmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
