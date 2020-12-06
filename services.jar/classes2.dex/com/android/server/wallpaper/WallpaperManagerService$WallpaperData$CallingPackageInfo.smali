.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallingPackageInfo"
.end annotation


# instance fields
.field callingPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;->callingPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getCallingPackageInfo()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;->callingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCallingPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;->callingPackageName:Ljava/lang/String;

    return-object v0
.end method
