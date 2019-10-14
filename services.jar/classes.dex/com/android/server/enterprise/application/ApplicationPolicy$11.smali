.class Lcom/android/server/enterprise/application/ApplicationPolicy$11;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerLockedBootCompletedListener()V
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

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "ApplicationPolicy"

    const-string v1, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->enablePreventStart()V
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3400(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$11$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$11$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$11;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$11$1;->start()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3500(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/application/ProcessStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ProcessStats;->init()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
