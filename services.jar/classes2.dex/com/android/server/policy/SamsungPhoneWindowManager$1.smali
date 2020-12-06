.class Lcom/android/server/policy/SamsungPhoneWindowManager$1;
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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasSPenFeature:Z
    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$100(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getPenState()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I
    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$200(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v3

    if-eq v1, v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # invokes: Lcom/android/server/policy/SamsungPhoneWindowManager;->isSpenInboxModel()Z
    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$300(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    :cond_3c
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;
    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$400(Lcom/android/server/policy/SamsungPhoneWindowManager;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/OneHandOpPolicyManager;->systemBooted()V

    :cond_45
    return-void
.end method
