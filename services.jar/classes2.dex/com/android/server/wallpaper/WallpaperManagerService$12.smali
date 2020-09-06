.class Lcom/android/server/wallpaper/WallpaperManagerService$12;
.super Landroid/os/Handler;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_238

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    if-eq v0, v2, :cond_102

    const/16 v1, 0x10

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_240

    goto/16 :goto_23e

    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: reset kwp tilt setting. by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Landroid/app/WallpaperManager;->DEFAULT_WALLPAPER_TYPE_MULTIPLE:Z

    if-eqz v1, :cond_23e

    const-string v1, "com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23e

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_tilt_effect"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_23e

    :pswitch_48
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaperByDisplayChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    goto/16 :goto_23e

    :pswitch_51
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->handleWallpaperBindingTimeout()V
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3300(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    goto/16 :goto_23e

    :pswitch_58
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "msg MSG_UPDATE_DEFAULT_WALLPAPER"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->rebindDefaultWallpaperIfNeeded()V
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3200(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    goto/16 :goto_23e

    :pswitch_67
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "need_dark_font"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "need_dark_statusbar"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "need_dark_navigationbar"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "send wallpaperChangedIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23e

    :pswitch_ba
    iget v0, p1, Landroid/os/Message;->arg2:I

    const-string v3, "lockscreen_wallpaper_transparent"

    and-int/lit8 v4, v0, 0x1c

    if-ne v4, v2, :cond_c5

    const-string v3, "dex_lockscreen_wallpaper_transparency"

    goto :goto_cc

    :cond_c5
    and-int/lit8 v2, v0, 0x1c

    if-ne v2, v1, :cond_cc

    const-string/jumbo v3, "sub_display_lockscreen_wallpaper_transparency"

    :cond_cc
    :goto_cc
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setSettingsSystemUiTransparency(ILjava/lang/String;)V

    goto/16 :goto_23e

    :pswitch_d5
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_23e

    :pswitch_e7
    iget v0, p1, Landroid/os/Message;->arg2:I

    const-string v3, "android.wallpaper.settings_systemui_transparency"

    and-int/lit8 v4, v0, 0x1c

    if-ne v4, v2, :cond_f2

    const-string v3, "dex_system_wallpaper_transparency"

    goto :goto_f9

    :cond_f2
    and-int/lit8 v2, v0, 0x1c

    if-ne v2, v1, :cond_f9

    const-string/jumbo v3, "sub_display_system_wallpaper_transparency"

    :cond_f9
    :goto_f9
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setSettingsSystemUiTransparency(ILjava/lang/String;)V

    goto/16 :goto_23e

    :cond_102
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_10a

    move v2, v1

    goto :goto_10b

    :cond_10a
    move v2, v3

    :goto_10b
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " force update = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; persona id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; current user ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; current persona = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_157

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v4, v0, :cond_20d

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I
    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v4, v5, :cond_20d

    :cond_157
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    :try_start_168
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v6

    if-eqz v6, :cond_216

    if-eqz v5, :cond_216

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_176
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_176} :catch_22d

    if-eqz v6, :cond_17a

    goto/16 :goto_216

    :cond_17a
    nop

    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " show knox wallpaper persona id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_196
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {v7, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    if-eqz v7, :cond_20c

    const/4 v8, 0x0

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_1aa

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    :cond_1aa
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->isInfinityComponent(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "try to switchWallpaper: isKnoxId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , isInfinity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", extras ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v13, v13, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I
    invoke-static {v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1fa

    if-eqz v9, :cond_1fa

    goto :goto_1fb

    :cond_1fa
    move v1, v3

    :goto_1fb
    if-nez v1, :cond_203

    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    :cond_203
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v12, v12, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I
    invoke-static {v11, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2802(Lcom/android/server/wallpaper/WallpaperManagerService;I)I

    :cond_20c
    monitor-exit v6
    :try_end_20d
    .catchall {:try_start_196 .. :try_end_20d} :catchall_213

    :cond_20d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mIsUpdateForcedForPersona:Z
    invoke-static {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2902(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z

    goto :goto_23e

    :catchall_213
    move-exception v1

    :try_start_214
    monitor-exit v6
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_213

    throw v1

    :cond_216
    :goto_216
    :try_start_216
    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUserRunnig State : false for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22c
    .catch Landroid/os/RemoteException; {:try_start_216 .. :try_end_22c} :catch_22d

    goto :goto_23e

    :catch_22d
    move-exception v1

    const-string v3, "WallpaperManagerService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23e

    :cond_238
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$12;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->handleOMCWallpaperUpdated()V
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3000(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    nop

    :cond_23e
    :goto_23e
    return-void

    nop

    :pswitch_data_240
    .packed-switch 0x3ec
        :pswitch_e7
        :pswitch_d5
        :pswitch_ba
        :pswitch_67
        :pswitch_58
        :pswitch_51
        :pswitch_48
        :pswitch_13
    .end packed-switch
.end method
