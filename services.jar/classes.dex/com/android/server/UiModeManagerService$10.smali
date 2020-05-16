.class Lcom/android/server/UiModeManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_18a

    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    goto/16 :goto_18a

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1e

    const-string v1, "UiModeManagerService"

    const-string v2, "context.getResources() null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_night_theme"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "display_night_theme_scheduled_type"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "display_night_theme_scheduled"

    if-lez v4, :cond_46

    move v7, v2

    goto :goto_47

    :cond_46
    move v7, v3

    :goto_47
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4f

    move v5, v2

    goto :goto_50

    :cond_4f
    move v5, v3

    :goto_50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x2

    sparse-switch v8, :sswitch_data_196

    goto :goto_99

    :sswitch_5e
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    move v7, v3

    goto :goto_99

    :sswitch_68
    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    const/4 v7, 0x4

    goto :goto_99

    :sswitch_72
    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    const/4 v7, 0x5

    goto :goto_99

    :sswitch_7c
    const-string v8, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    const/4 v7, 0x3

    goto :goto_99

    :sswitch_86
    const-string v8, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    move v7, v2

    goto :goto_99

    :sswitch_90
    const-string v8, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    move v7, v9

    :cond_99
    :goto_99
    packed-switch v7, :pswitch_data_1b0

    goto/16 :goto_186

    :pswitch_9e
    if-eqz v5, :cond_b6

    if-ne v4, v9, :cond_b6

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->calculateUserSchedule()V
    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->start()V
    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3000(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto/16 :goto_186

    :cond_b6
    if-eqz v5, :cond_186

    if-ne v4, v2, :cond_186

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->isLocationOnMode(Landroid/content/Context;)Z
    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v2, p1, v3, v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto/16 :goto_186

    :pswitch_c9
    if-eqz v5, :cond_186

    if-ne v4, v9, :cond_186

    if-eqz v1, :cond_d4

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v3, p1, v2, v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    :cond_d4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->calculateUserSchedule()V
    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->start()V
    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3000(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto/16 :goto_186

    :pswitch_e8
    if-nez v1, :cond_186

    if-eqz v5, :cond_186

    if-ne v4, v9, :cond_186

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v3, p1, v2, v9}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto/16 :goto_186

    :pswitch_f5
    if-ne v4, v2, :cond_186

    if-eqz v5, :cond_186

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "location_providers_allowed"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_114

    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13f

    :cond_114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "display_night_theme"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_12e

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v9, "display_night_theme"

    # invokes: Lcom/android/server/UiModeManagerService;->setSettingsPutInt(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v8, p1, v9, v3}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v8, p1, v3, v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    :cond_12e
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v8, "display_night_theme_scheduled"

    # invokes: Lcom/android/server/UiModeManagerService;->setSettingsPutInt(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v2, p1, v8, v3}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->stop()V
    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3300(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    :cond_13f
    goto :goto_186

    :pswitch_140
    if-eqz v5, :cond_178

    if-ne v4, v9, :cond_157

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->calculateUserSchedule()V
    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeTimer:Lcom/android/server/UiModeManagerService$NightModeTimer;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    # invokes: Lcom/android/server/UiModeManagerService$NightModeTimer;->start()V
    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3000(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto :goto_186

    :cond_157
    if-ne v4, v2, :cond_186

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->isLocationOnMode(Landroid/content/Context;)Z
    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_167

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v2, p1, v3, v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto :goto_186

    :cond_167
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v7, "display_night_theme_scheduled"

    # invokes: Lcom/android/server/UiModeManagerService;->setSettingsPutInt(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v2, p1, v7, v3}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v7, "display_night_theme"

    # invokes: Lcom/android/server/UiModeManagerService;->setSettingsPutInt(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v2, p1, v7, v3}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_186

    :cond_178
    if-eqz v1, :cond_180

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v2, p1, v3, v9}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto :goto_186

    :cond_180
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v7, p1, v3, v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    nop

    :cond_186
    :goto_186
    monitor-exit v0

    return-void

    :catchall_188
    move-exception v1

    goto :goto_194

    :cond_18a
    :goto_18a
    const-string v1, "UiModeManagerService"

    const-string/jumbo v2, "onReceive() intent is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_194
    monitor-exit v0
    :try_end_195
    .catchall {:try_start_7 .. :try_end_195} :catchall_188

    throw v1

    :sswitch_data_196
    .sparse-switch
        -0x596e4a14 -> :sswitch_90
        -0x469f6743 -> :sswitch_86
        -0x2c604d96 -> :sswitch_7c
        0x1df32313 -> :sswitch_72
        0x1e1f7f95 -> :sswitch_68
        0x2f94f923 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_140
        :pswitch_f5
        :pswitch_e8
        :pswitch_c9
        :pswitch_9e
        :pswitch_9e
    .end packed-switch
.end method
