.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KnoxStateMonitor"

    const-string v1, " onReceive RCP_POLICY_CHANGED intent OR intent.getAction() is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "policyChangedBundle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KnoxStateMonitor"

    const-string v1, " onReceive RCP_POLICY_CHANGED bundle is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "policyChangedBundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "KnoxStateMonitor"

    const-string v2, " onReceive RCP_POLICY_CHANGED policyChangedBundle == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onReceive RCP_POLICY_CHANGED policyChangedBundle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v1, "personaId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "syncerList"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "policyName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v1, v2, :cond_8

    if-eqz v3, :cond_8

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const-string v2, "Notifications"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7600(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7700(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7800(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget-object v2, v2, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v5, 0x1391

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "KnoxStateMonitor"

    const-string v5, "Notification RCP policy is updated"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    :goto_0
    const-string v2, "KnoxStateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onReceive RCP_POLICY_CHANGED invalid data in bundle .. returning .... : pId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " syncerList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " policyName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    :goto_1
    return-void
.end method
