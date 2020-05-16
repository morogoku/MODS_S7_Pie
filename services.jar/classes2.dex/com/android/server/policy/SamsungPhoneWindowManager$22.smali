.class Lcom/android/server/policy/SamsungPhoneWindowManager$22;
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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "status"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_BATTERY_CHANGED - Level :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", battStatus :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    if-gt v1, v5, :cond_45

    const/4 v5, 0x2

    if-eq v3, v5, :cond_45

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsLowBattery:Z
    invoke-static {v2, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1902(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_4a

    :cond_45
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsLowBattery:Z
    invoke-static {v4, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1902(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    :cond_4a
    :goto_4a
    return-void
.end method
