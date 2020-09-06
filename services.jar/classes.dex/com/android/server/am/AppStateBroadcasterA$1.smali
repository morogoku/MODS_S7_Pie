.class Lcom/android/server/am/AppStateBroadcasterA$1;
.super Landroid/content/BroadcastReceiver;
.source "AppStateBroadcasterA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppStateBroadcasterA;
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
    .registers 6

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENABLE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    # getter for: Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z
    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$900()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "IQAgent"

    const-string v2, "Agent wants to track packages..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    # invokes: Lcom/android/server/am/AppStateBroadcasterA;->enableIntentBroadcast()V
    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$1400()V

    goto :goto_30

    :cond_20
    # getter for: Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z
    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$900()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "IQAgent"

    const-string v2, "Stop tracking packages..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    # invokes: Lcom/android/server/am/AppStateBroadcasterA;->disableIntentBroadcast()V
    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$1500()V

    :goto_30
    return-void
.end method
