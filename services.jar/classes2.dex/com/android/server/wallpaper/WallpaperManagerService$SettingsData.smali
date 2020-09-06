.class Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsData"
.end annotation


# static fields
.field static final LOCK_SETTINGS:[Ljava/lang/String;

.field static final SYSTEM_SETTINGS:[Ljava/lang/String;

.field static final settingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "wallpaper_tilt_status"

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    const-string v2, "lockscreen_wallpaper"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData;->SYSTEM_SETTINGS:[Ljava/lang/String;

    const-string v0, "lockscreen_wallpaper_tilt_effect"

    const-string v1, "lockscreen_wallpaper_transparent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData;->LOCK_SETTINGS:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData$1;

    invoke-direct {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData$1;-><init>()V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData;->settingList:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSettingList(I)[Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData;->settingList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
