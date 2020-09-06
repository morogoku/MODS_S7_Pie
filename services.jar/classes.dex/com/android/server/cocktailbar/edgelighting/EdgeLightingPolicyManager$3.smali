.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
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
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_14

    goto :goto_12

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$602(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z

    goto :goto_12

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->access$602(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z

    nop

    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method
