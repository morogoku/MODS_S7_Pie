.class Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$400(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$400(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$900(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_2
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$400(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$400(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$500(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$500(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$500(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "KeyguardClockPage"

    const-string/jumbo v2, "onScreenTurnedOn() Do considerChangeClockView() because we lost the clock view"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$600(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$400(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$400(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$700(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$800(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    nop

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_4
    return-void
.end method

.method public onUpdateAdaptiveColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 2

    const-string v0, "KeyguardClockPage"

    const-string/jumbo v1, "onUpdateAdaptiveColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->access$300(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method
