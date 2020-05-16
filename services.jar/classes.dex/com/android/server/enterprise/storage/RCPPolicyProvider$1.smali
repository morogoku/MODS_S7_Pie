.class Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "RCPPolicyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/storage/RCPPolicyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.knox.SETUP_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_35

    const-string v1, "RCPPolicyProvider"

    const-string/jumbo v4, "onReceive() KNOX SETUP COMPLETE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "userid"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    # getter for: Lcom/android/server/enterprise/storage/RCPPolicyProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->access$100(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/enterprise/storage/RCPPolicyProvider;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->access$000()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_34
    goto :goto_62

    :cond_35
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "RCPPolicyProvider"

    const-string/jumbo v4, "onReceive() USER REMOVED"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    # getter for: Lcom/android/server/enterprise/storage/RCPPolicyProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->access$100(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/enterprise/storage/RCPPolicyProvider;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->access$000()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_62
    :goto_62
    return-void
.end method
