.class Lcom/android/server/enterprise/email/EmailPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "EmailPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/EmailPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/EmailPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/EmailPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy$1;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailPolicy$1;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    # invokes: Lcom/android/server/enterprise/email/EmailPolicy;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->access$000(Lcom/android/server/enterprise/email/EmailPolicy;I)V

    :cond_18
    return-void
.end method
