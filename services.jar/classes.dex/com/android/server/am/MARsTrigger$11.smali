.class Lcom/android/server/am/MARsTrigger$11;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast received action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_7a

    const-string/jumbo v1, "userid"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x96

    if-lt v1, v3, :cond_78

    const/16 v3, 0xa0

    if-gt v1, v3, :cond_78

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getSecureFolderUserId()I

    move-result v3

    if-eq v1, v3, :cond_44

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v1}, Lcom/android/server/am/MARsPolicyManager;->setSecureFolderUserId(I)V

    :cond_44
    const-string v3, "MARsTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserActionReceiver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsPolicyManager;->setSecureFolderEnabled(Z)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsTrigger;->registerSecureFolderReceiver(I)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager;->sendInsPkgAsUserMsgToDBHandler(I)V

    :cond_78
    goto/16 :goto_129

    :cond_7a
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x63

    const/16 v5, 0x5f

    if-eqz v1, :cond_f1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v3, :cond_ce

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getSecureFolderUserId()I

    move-result v3

    if-ne v1, v3, :cond_ce

    const-string v3, "MARsTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserActionReceiver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsPolicyManager;->setSecureFolderEnabled(Z)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Lcom/android/server/am/MARsTrigger;->unregisterSecureFolderReceiver()V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager;->sendDelPkgAsUserMsgToDBHandler(I)V

    goto :goto_f0

    :cond_ce
    if-lt v1, v5, :cond_f0

    if-gt v1, v4, :cond_f0

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsPolicyManager;->setDualAppEnabled(Z)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Lcom/android/server/am/MARsTrigger;->unregisterDualAppReceiver()V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager;->sendDelPkgAsUserMsgToDBHandler(I)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/16 v3, -0x2710

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->setDualAppUserId(I)V

    :cond_f0
    :goto_f0
    goto :goto_129

    :cond_f1
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v5, :cond_129

    if-gt v1, v4, :cond_129

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsPolicyManager;->setDualAppEnabled(Z)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsTrigger;->registerDualAppReceiver(I)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager;->sendInsPkgAsUserMsgToDBHandler(I)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getDualAppUserId()I

    move-result v2

    if-eq v1, v2, :cond_129

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPolicyManager;->setDualAppUserId(I)V

    :cond_129
    :goto_129
    return-void
.end method
