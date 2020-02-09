.class Lcom/android/systemui/power/PowerUI$8;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$8;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$8;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$4202(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$8;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$4202(Lcom/android/systemui/power/PowerUI;Z)Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$8;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissPowerSupplyingInLowBatteryNotice()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
