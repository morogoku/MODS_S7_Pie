.class Lcom/android/server/pm/PersonaPolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaPolicyManagerService$1;->getSendingUserId()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    # invokes: Lcom/android/server/pm/PersonaPolicyManagerService;->removePersonaData(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->access$000(Lcom/android/server/pm/PersonaPolicyManagerService;I)V

    :cond_21
    return-void
.end method
