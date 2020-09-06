.class Lcom/android/server/am/Pageboost$2;
.super Landroid/content/BroadcastReceiver;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
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

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_30
    goto :goto_54

    :cond_31
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_54
    :goto_54
    return-void
.end method
