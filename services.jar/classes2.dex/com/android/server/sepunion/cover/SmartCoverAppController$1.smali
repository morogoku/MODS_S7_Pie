.class Lcom/android/server/sepunion/cover/SmartCoverAppController$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartCoverAppController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/SmartCoverAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    # getter for: Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageChangeIntentReceiver : onReceive action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    # invokes: Lcom/android/server/sepunion/cover/SmartCoverAppController;->startSmartCoverService()Z
    invoke-static {}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->access$200()Z

    goto :goto_4f

    :cond_3b
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_4f

    :cond_44
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    # invokes: Lcom/android/server/sepunion/cover/SmartCoverAppController;->stopSmartCoverService()V
    invoke-static {}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->access$300()V

    :cond_4f
    :goto_4f
    return-void
.end method
