.class Lcom/android/server/HarmonyEASService$1;
.super Landroid/content/BroadcastReceiver;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HarmonyEASService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HarmonyEASService;


# direct methods
.method constructor <init>(Lcom/android/server/HarmonyEASService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/HarmonyEASService$1;->this$0:Lcom/android/server/HarmonyEASService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/server/HarmonyEASService$1;->getSendingUserId()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "HarmonyEASService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/HarmonyEASService$1;->this$0:Lcom/android/server/HarmonyEASService;

    invoke-virtual {v2, v1}, Lcom/android/server/HarmonyEASService;->handleUserChanged(I)V

    goto :goto_5e

    :cond_3b
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/server/HarmonyEASService$1;->this$0:Lcom/android/server/HarmonyEASService;

    invoke-virtual {v2, v1}, Lcom/android/server/HarmonyEASService;->clearDataForUser(I)V

    goto :goto_5e

    :cond_49
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_59
    iget-object v2, p0, Lcom/android/server/HarmonyEASService$1;->this$0:Lcom/android/server/HarmonyEASService;

    invoke-virtual {v2, v1}, Lcom/android/server/HarmonyEASService;->handlePackagesChanged(I)V

    :cond_5e
    :goto_5e
    return-void
.end method
