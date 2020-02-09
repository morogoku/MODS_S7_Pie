.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v1

    const-string v2, "KeyguardWallpaperController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChanged() oldTransType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curTransType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isWhiteKeyguardStatusBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->forceBroadcastWhiteKeyguardWallpaper()V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$002(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I

    goto :goto_0

    :cond_1
    const-string v2, "white_lockscreen_statusbar"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateKeyguardStatusBar(Z)V

    :cond_2
    :goto_0
    return-void
.end method
