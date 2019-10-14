.class Lcom/android/server/VibratorService$5;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_28

    const/16 v0, 0x20

    const/4 v2, 0x0

    if-eq p1, v0, :cond_22

    packed-switch p1, :pswitch_data_30

    goto :goto_2e

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$1102(Lcom/android/server/VibratorService;Z)Z

    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z
    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$1002(Lcom/android/server/VibratorService;Z)Z

    goto :goto_2e

    :pswitch_19
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1002(Lcom/android/server/VibratorService;Z)Z

    goto :goto_2e

    :cond_22
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$1102(Lcom/android/server/VibratorService;Z)Z

    goto :goto_2e

    :cond_28
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1102(Lcom/android/server/VibratorService;Z)Z

    nop

    :cond_2e
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method
