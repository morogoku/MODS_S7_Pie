.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_1e

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap Receiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_150

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v2, v4, v3, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_150

    :cond_3e
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_b6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_52
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "android.intent.extra.UID"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_7e

    const-string v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION PACKAGE REMOVED packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " uid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v5, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->updateHashCache(ILjava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v4, :cond_b4

    if-eqz v7, :cond_b4

    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a3

    const-string v3, "NetworkAnalytics:Service"

    const-string v9, "The package removal intent has been called before upgrade"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a3
    new-instance v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    iput-object v4, v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iput v6, v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v11, 0x6

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v10, v11, v3, v3, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    :cond_b4
    goto/16 :goto_150

    :cond_b6
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_c9

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_c9
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_e3

    const-string v5, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION PACKAGE ADDED packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "android.intent.extra.UID"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v4, :cond_110

    if-eqz v7, :cond_110

    new-instance v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    iput-object v4, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iput v6, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v10, 0x7

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v9, v10, v3, v3, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    :cond_110
    goto :goto_150

    :cond_111
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_12a

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->updateHashCacheForUser(I)V

    :cond_12a
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v5, 0xb

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v4, v5, v3, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto :goto_150

    :cond_132
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_145

    const-string v2, "NetworkAnalytics:Service"

    const-string v4, "EMERGENCY_STATE_CHANGED received"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_145
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v4, 0xc

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v2, v4, v3, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    :cond_150
    :goto_150
    return-void
.end method
