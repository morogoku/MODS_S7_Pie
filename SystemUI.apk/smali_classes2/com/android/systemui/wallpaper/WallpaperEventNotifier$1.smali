.class Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WallpaperEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method checkingSkippedMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$300(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$400(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$500(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$600(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$400(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getWallpaperHintsInArea(I)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v2, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$700(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;[I)V

    :cond_0
    return-void
.end method

.method public onOpenThemeChangeStarted()V
    .locals 2

    const-string v0, "WallpaperEventNotifier"

    const-string v1, "THEME_APPLY_START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$002(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)Z

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$002(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->checkingSkippedMessage()V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$100(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v2, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$200(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    :goto_0
    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v0

    const-string v1, "WallpaperEventNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "THEME_REAPPLY lockType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$100(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$100(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    :cond_1
    :goto_0
    return-void
.end method
