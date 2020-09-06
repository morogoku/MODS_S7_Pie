.class Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registerKnoxModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "SystemUIAdapter"

    const-string v1, "Received intent: ACTION_USER_ADDED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    # invokes: Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registPersonaObserver(I)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$400(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    :cond_2d
    return-void
.end method
