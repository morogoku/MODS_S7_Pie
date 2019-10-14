.class Lcom/android/server/enterprise/application/ApplicationPolicy$9;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string v0, "ApplicationPolicy"

    const-string v1, "boot completed - refreshWidgetStatus"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3202(Lcom/android/server/enterprise/application/ApplicationPolicy;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$300(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    goto :goto_26

    :cond_3a
    return-void
.end method
