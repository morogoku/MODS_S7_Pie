.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$800(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$702(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;I)I

    return-void
.end method
