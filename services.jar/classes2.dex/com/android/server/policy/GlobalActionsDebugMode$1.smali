.class Lcom/android/server/policy/GlobalActionsDebugMode$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActionsDebugMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActionsDebugMode;->addGlobalActionsUpdateStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActionsDebugMode;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsDebugMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsDebugMode$1;->this$0:Lcom/android/server/policy/GlobalActionsDebugMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string/jumbo v0, "service"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActionsDebugMode$1;->this$0:Lcom/android/server/policy/GlobalActionsDebugMode;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    move v1, v3

    nop

    :cond_f
    # setter for: Lcom/android/server/policy/GlobalActionsDebugMode;->mGlobalActionsStartByService:Z
    invoke-static {v2, v1}, Lcom/android/server/policy/GlobalActionsDebugMode;->access$002(Lcom/android/server/policy/GlobalActionsDebugMode;Z)Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsDebugMode$1;->this$0:Lcom/android/server/policy/GlobalActionsDebugMode;

    # setter for: Lcom/android/server/policy/GlobalActionsDebugMode;->mIsDebugMode:Z
    invoke-static {v1, v3}, Lcom/android/server/policy/GlobalActionsDebugMode;->access$102(Lcom/android/server/policy/GlobalActionsDebugMode;Z)Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsDebugMode$1;->this$0:Lcom/android/server/policy/GlobalActionsDebugMode;

    # getter for: Lcom/android/server/policy/GlobalActionsDebugMode;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActionsDebugMode;->access$200(Lcom/android/server/policy/GlobalActionsDebugMode;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Globalactions debug mode activate. service : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method
