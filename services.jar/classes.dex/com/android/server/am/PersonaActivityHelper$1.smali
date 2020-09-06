.class Lcom/android/server/am/PersonaActivityHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PersonaActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PersonaActivityHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/PersonaActivityHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/PersonaActivityHelper$1;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v2, "PersonaActivityHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserReceiver.onReceive() {action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/PersonaActivityHelper$1;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    iget-object v2, v2, Lcom/android/server/am/PersonaActivityHelper;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_77

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_77

    const-string v3, "PersonaActivityHelper"

    const-string v4, "COM Container removed case, switchPersonaWallpaper for user 0."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/PersonaActivityHelper$1;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    # getter for: Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v3}, Lcom/android/server/am/PersonaActivityHelper;->access$000(Lcom/android/server/am/PersonaActivityHelper;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v3

    if-nez v3, :cond_64

    iget-object v3, p0, Lcom/android/server/am/PersonaActivityHelper$1;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    const-string/jumbo v4, "wallpaper"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService;

    # setter for: Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v3, v4}, Lcom/android/server/am/PersonaActivityHelper;->access$002(Lcom/android/server/am/PersonaActivityHelper;Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    :cond_64
    iget-object v3, p0, Lcom/android/server/am/PersonaActivityHelper$1;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    # getter for: Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v3}, Lcom/android/server/am/PersonaActivityHelper;->access$000(Lcom/android/server/am/PersonaActivityHelper;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/am/PersonaActivityHelper$1;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    # getter for: Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v3}, Lcom/android/server/am/PersonaActivityHelper;->access$000(Lcom/android/server/am/PersonaActivityHelper;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    :cond_76
    return-void

    :cond_77
    return-void
.end method
