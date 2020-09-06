.class Lcom/android/server/policy/SamsungPhoneWindowManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasSPenFeature:Z
    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$100(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getPenState()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_67

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "penInsert"

    if-ne v1, v3, :cond_2e

    move v6, v3

    goto :goto_2f

    :cond_2e
    move v6, v2

    :goto_2f
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isScreenOn"

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isKeyguardLocked"

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_67
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-eqz v1, :cond_d5

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "any_screen_enabled"

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I
    invoke-static {v1, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$602(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "one_handed_op_wakeup_type"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I
    invoke-static {v1, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$702(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_bc

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userSwitched.  mEasyOneHandEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I
    invoke-static {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$600(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mEasyOneHandTriggerType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I
    invoke-static {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$700(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I
    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$600(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v1

    if-ne v1, v3, :cond_d5

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I
    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$700(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v1

    if-nez v1, :cond_d5

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;
    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$400(Lcom/android/server/policy/SamsungPhoneWindowManager;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Z)V

    :cond_d5
    return-void
.end method
