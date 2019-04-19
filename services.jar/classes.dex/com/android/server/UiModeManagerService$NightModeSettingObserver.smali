.class Lcom/android/server/UiModeManagerService$NightModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NightModeSettingObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/UiModeManagerService$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/UiModeManagerService$NightModeSettingObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->observe()V

    return-void
.end method

.method private observe()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_night_theme"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "display_night_theme_scheduled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "display_night_theme_scheduled_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "display_night_theme_on_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "display_night_theme_off_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private stop()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateSetting(Landroid/net/Uri;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "display_night_theme_scheduled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    move v2, v4

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "display_night_theme_scheduled_type"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "display_night_theme"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_30

    move v6, v4

    goto :goto_31

    :cond_30
    move v6, v3

    :goto_31
    const/4 v7, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x2

    sparse-switch v8, :sswitch_data_176

    goto :goto_71

    :sswitch_3b
    const-string/jumbo v8, "display_night_theme_on_time"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    move v7, v3

    goto :goto_71

    :sswitch_46
    const-string/jumbo v8, "display_night_theme_scheduled"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    const/4 v7, 0x3

    goto :goto_71

    :sswitch_51
    const-string/jumbo v8, "display_night_theme_off_time"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    move v7, v4

    goto :goto_71

    :sswitch_5c
    const-string/jumbo v8, "display_night_theme_scheduled_type"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    const/4 v7, 0x4

    goto :goto_71

    :sswitch_67
    const-string/jumbo v8, "display_night_theme"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    move v7, v9

    :cond_71
    :goto_71
    packed-switch v7, :pswitch_data_18c

    goto/16 :goto_174

    :pswitch_76
    if-ne v5, v9, :cond_a0

    if-eqz v2, :cond_a0

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$3400(Lcom/android/server/UiModeManagerService;)Z

    move-result v3

    if-nez v3, :cond_8c

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->registerNightModeReceiver()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$3500(Lcom/android/server/UiModeManagerService;)V

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v3, v4}, Lcom/android/server/UiModeManagerService;->access$3402(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_8c
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->calculateUserSchedule()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->start()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3000(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto/16 :goto_174

    :cond_a0
    if-ne v5, v4, :cond_174

    if-eqz v2, :cond_174

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v4, v7, v3, v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v4

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->stop()V
    invoke-static {v4}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3300(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mIsScreenOnOffForCustomRegistered:Z
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$3700(Lcom/android/server/UiModeManagerService;)Z

    move-result v4

    if-eqz v4, :cond_174

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterScreenOnOffForCustomReceiver(Landroid/content/Context;)V
    invoke-static {v4, v7}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mIsScreenOnOffForCustomRegistered:Z
    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$3702(Lcom/android/server/UiModeManagerService;Z)Z

    goto/16 :goto_174

    :pswitch_ca
    if-eqz v2, :cond_10d

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mFlagToastBeEnabled:Z
    invoke-static {v7, v6}, Lcom/android/server/UiModeManagerService;->access$602(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3400(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-nez v7, :cond_e3

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->registerNightModeReceiver()V
    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3500(Lcom/android/server/UiModeManagerService;)V

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v7, v4}, Lcom/android/server/UiModeManagerService;->access$3402(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_e3
    if-ne v5, v9, :cond_f9

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->calculateUserSchedule()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->start()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3000(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto/16 :goto_174

    :cond_f9
    if-ne v5, v4, :cond_174

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->isLocationOnMode(Landroid/content/Context;)Z
    invoke-static {v4, v7}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_174

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v4, v7, v3, v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto :goto_174

    :cond_10d
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3400(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-eqz v7, :cond_11f

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterNightModeReceiver()V
    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3600(Lcom/android/server/UiModeManagerService;)V

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v7, v3}, Lcom/android/server/UiModeManagerService;->access$3402(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_11f
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mIsScreenOnOffForCustomRegistered:Z
    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3700(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-eqz v7, :cond_133

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterScreenOnOffForCustomReceiver(Landroid/content/Context;)V
    invoke-static {v7, v8}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mIsScreenOnOffForCustomRegistered:Z
    invoke-static {v7, v3}, Lcom/android/server/UiModeManagerService;->access$3702(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_133
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mDisableSettingScheduled:Z
    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-nez v7, :cond_14e

    if-eqz v6, :cond_147

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "display_night_theme"

    # invokes: Lcom/android/server/UiModeManagerService;->setSettingsPutInt(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v7, v8, v9, v3}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    :cond_147
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v7, v8, v3, v4}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    :cond_14e
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mDisableSettingScheduled:Z
    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$1502(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->stop()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3300(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto :goto_174

    :pswitch_15d
    goto :goto_174

    :pswitch_15e
    if-eqz v2, :cond_174

    if-ne v5, v9, :cond_174

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->calculateUserSchedule()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->start()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3000(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    :cond_174
    :goto_174
    return-void

    nop

    :sswitch_data_176
    .sparse-switch
        -0x609dd11b -> :sswitch_67
        -0x16481bda -> :sswitch_5c
        0x1e265fb7 -> :sswitch_51
        0x33414fd3 -> :sswitch_46
        0x4814f1d3 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_15e
        :pswitch_15e
        :pswitch_15d
        :pswitch_ca
        :pswitch_76
    .end packed-switch
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->updateSetting(Landroid/net/Uri;)V

    return-void
.end method
