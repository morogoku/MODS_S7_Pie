.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeystoreReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500()Z

    move-result v1

    if-eqz v1, :cond_22

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeystoreReceiver onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500()Z

    move-result v1

    if-eqz v1, :cond_39

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeystoreReceiver ACTION_PACKAGE_REMOVED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z
    invoke-static {v4, v3, v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$900(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z
    invoke-static {v4, v3, v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$1000(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    :cond_5f
    return-void
.end method
