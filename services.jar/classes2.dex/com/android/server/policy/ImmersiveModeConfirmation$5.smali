.class Lcom/android/server/policy/ImmersiveModeConfirmation$5;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrEntered:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrPersistentVrMode:Z

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    :goto_18
    const/16 v3, 0x40

    const/4 v4, 0x2

    if-eq p1, v3, :cond_3a

    const/16 v3, 0x80

    if-eq p1, v3, :cond_2f

    packed-switch p1, :pswitch_data_7c

    goto :goto_44

    :pswitch_25
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v1, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    goto :goto_44

    :pswitch_2a
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v2, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    goto :goto_44

    :cond_2f
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v1, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrEntered:Z

    if-ne p2, v4, :cond_44

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v1, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrPersistentVrMode:Z

    goto :goto_44

    :cond_3a
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v2, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrEntered:Z

    if-ne p2, v4, :cond_44

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v2, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrPersistentVrMode:Z

    :cond_44
    :goto_44
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v5, v5, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    if-nez v5, :cond_5a

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v5, v5, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrEntered:Z

    if-nez v5, :cond_5a

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v5, v5, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrPersistentVrMode:Z

    if-eqz v5, :cond_59

    goto :goto_5a

    :cond_59
    goto :goto_5b

    :cond_5a
    :goto_5a
    move v1, v2

    :goto_5b
    iput-boolean v1, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrRunning:Z

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v1, v1, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrRunning:Z

    if-eq v0, v1, :cond_7b

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v1, v1, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrRunning:Z

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    :cond_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method
