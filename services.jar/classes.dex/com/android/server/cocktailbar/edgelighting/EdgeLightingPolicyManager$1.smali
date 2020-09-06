.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z
    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$300(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "heads_up_notifications_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    nop

    :cond_20
    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z
    invoke-static {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$102(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "heads up is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "enabled"

    goto :goto_41

    :cond_3e
    const-string/jumbo v2, "disabled"

    :goto_41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
