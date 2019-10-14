.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    const-string/jumbo v0, "ent_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.server.enterprise.billing.mapping_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_3c

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    :cond_3c
    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_41
    goto :goto_24

    :cond_42
    const-string v1, "com.samsung.server.enterprise.billing.action_enable_status_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3eb

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_72

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    :cond_72
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_75
    goto :goto_5a

    :cond_76
    const-string v1, "com.samsung.server.enterprise.billing.mobile_fallback_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_a4

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    :cond_a4
    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_a9
    goto :goto_8c

    :cond_aa
    const-string v1, "com.samsung.server.enterprise.billing.wifi_fallback_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_d8

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    :cond_d8
    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_dd
    goto :goto_c0

    :cond_de
    const-string v1, "com.samsung.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_10c

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_111

    :cond_10c
    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_111
    goto :goto_f4

    :cond_112
    const-string v1, "com.samsung.server.enterprise.billing.roaming_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_128
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_140

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_145

    :cond_140
    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_145
    goto :goto_128

    :cond_146
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_174

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17d

    :cond_174
    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_17d

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_17d
    goto :goto_15c

    :cond_17e
    return-void
.end method
