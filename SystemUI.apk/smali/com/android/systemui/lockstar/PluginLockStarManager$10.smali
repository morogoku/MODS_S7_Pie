.class Lcom/android/systemui/lockstar/PluginLockStarManager$10;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/lockstar/PluginLockStarManager;->notifyWallpaperChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$10;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$10;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$2300(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$10;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->isRecoverRequiredWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$10;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->recover()V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$10;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$900(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->recover()V

    :cond_0
    return-void
.end method
