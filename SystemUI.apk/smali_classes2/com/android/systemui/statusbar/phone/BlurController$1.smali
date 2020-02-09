.class Lcom/android/systemui/statusbar/phone/BlurController$1;
.super Ljava/lang/Object;
.source "BlurController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BlurController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BlurController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BlurController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurController$1;->this$0:Lcom/android/systemui/statusbar/phone/BlurController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurController$1;->this$0:Lcom/android/systemui/statusbar/phone/BlurController;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/BlurController;->access$002(Lcom/android/systemui/statusbar/phone/BlurController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurController$1;->this$0:Lcom/android/systemui/statusbar/phone/BlurController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BlurController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper type has been changed to BackDropView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BlurController$1;->this$0:Lcom/android/systemui/statusbar/phone/BlurController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BlurController;->access$000(Lcom/android/systemui/statusbar/phone/BlurController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
