.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil$1;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "UsageStatsWatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;

    invoke-static {v0, p2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;->access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->hideFloatingNotification()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;->access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->showFlatingNotification()V

    :goto_0
    return-void
.end method
