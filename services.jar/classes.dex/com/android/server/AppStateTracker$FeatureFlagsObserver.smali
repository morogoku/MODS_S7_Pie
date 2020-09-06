.class Lcom/android/server/AppStateTracker$FeatureFlagsObserver;
.super Landroid/database/ContentObserver;
.source "AppStateTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureFlagsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTracker;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method isForcedAppStandbyEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const-string/jumbo v1, "forced_app_standby_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    return v2
.end method

.method isForcedAppStandbyForSmallBatteryEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const-string/jumbo v1, "forced_app_standby_for_small_battery_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    const-string/jumbo v0, "forced_app_standby_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_18
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-ne v2, v0, :cond_20

    monitor-exit v1

    return-void

    :cond_20
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean v0, v2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2f

    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyForcedAppStandbyFeatureFlagChanged()V

    goto :goto_76

    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2

    :cond_32
    const-string/jumbo v0, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4a
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    if-ne v2, v0, :cond_52

    monitor-exit v1

    return-void

    :cond_52
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean v0, v2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V
    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    monitor-exit v1

    goto :goto_76

    :catchall_5d
    move-exception v2

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_4a .. :try_end_5f} :catchall_5d

    throw v2

    :cond_60
    const-string v0, "AppStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected feature flag uri encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    return-void
.end method

.method register()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "forced_app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
