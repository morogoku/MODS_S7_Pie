.class Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAnimatedWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardAnimatedWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$202(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;I)I

    const-string v0, "KeyguardAnimatedWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastMobileKeyboardCoverd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$002(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$002(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z

    return-void
.end method
