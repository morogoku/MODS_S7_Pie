.class Lcom/android/server/notification/EventConditionProvider$3;
.super Landroid/content/BroadcastReceiver;
.source "EventConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EventConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$3;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    # getter for: Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/EventConditionProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "ConditionProviders.ECP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$3;->this$0:Lcom/android/server/notification/EventConditionProvider;

    # invokes: Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V
    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->access$400(Lcom/android/server/notification/EventConditionProvider;)V

    return-void
.end method
