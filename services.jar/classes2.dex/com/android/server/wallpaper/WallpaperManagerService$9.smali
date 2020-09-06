.class Lcom/android/server/wallpaper/WallpaperManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V
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

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "com.samsung.android.systemui.ACTION_STATUS_LOGGING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v2, 0x2

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->semGetWallpaperType(I)I

    move-result v2

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->sendLockWallpaperLog(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_22
    return-void
.end method
