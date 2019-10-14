.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;
.super Ljava/lang/Object;
.source "UsageStatsWatcherUtil.java"


# instance fields
.field private mFloatingNotificationStateManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;


# direct methods
.method static synthetic access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;->isLauncher(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/UsageStatsWatcherUtil;->mFloatingNotificationStateManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    return-object v0
.end method

.method private isLauncher(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
