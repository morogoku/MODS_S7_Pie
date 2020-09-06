.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$300(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J
    invoke-static {v1, v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$402(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;J)J

    goto :goto_39

    :cond_1e
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$300(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J
    invoke-static {v1, v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$402(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;J)J

    :cond_39
    :goto_39
    return-void
.end method
