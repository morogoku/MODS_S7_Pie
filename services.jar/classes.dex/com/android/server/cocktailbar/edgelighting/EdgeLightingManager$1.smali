.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$000(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z

    move-result v2

    if-ne v1, v2, :cond_f

    return-void

    :cond_f
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z
    invoke-static {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$002(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Z)Z

    if-eqz v1, :cond_42

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$300(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V

    :cond_42
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->access$000(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->setRinging(Z)V

    return-void
.end method
