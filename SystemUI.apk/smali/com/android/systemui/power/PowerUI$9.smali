.class Lcom/android/systemui/power/PowerUI$9;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;J)J

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$4302(Lcom/android/systemui/power/PowerUI;Z)Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissUnintentionalLcdOnNotice()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;J)J

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$4302(Lcom/android/systemui/power/PowerUI;Z)Z

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;J)J

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$4302(Lcom/android/systemui/power/PowerUI;Z)Z

    return-void
.end method
