.class Lcom/android/systemui/power/PowerUI$7;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


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

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 7

    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "PowerUI"

    const-string v6, "SContextListener - Move"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->access$3702(Lcom/android/systemui/power/PowerUI;Z)Z

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->access$3800(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->access$3900(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->access$3900(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    const-string v5, "PowerUI"

    const-string v6, "Unregister SContextListener - From Listener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->access$4100(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$4000(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v2, v4}, Lcom/android/systemui/power/PowerUI;->access$3802(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_0

    :pswitch_1
    const-string v2, "PowerUI"

    const-string v5, "SContextListener - No Move"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v2, v4}, Lcom/android/systemui/power/PowerUI;->access$3702(Lcom/android/systemui/power/PowerUI;Z)Z

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
