.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LDAPIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "LDAPAccountPolicyService"

    const-string v2, "LDAPIntentReceiver: Received intent : ACTION_LDAP_CREATE_ACCT_RESULT_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_30

    const-string v2, "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "com.samsung.android.knox.intent.extra.LDAP_RESULT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    # invokes: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V
    invoke-static {v6, v2, v3, v4, v5}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;IIJ)V

    :cond_30
    return-void
.end method
