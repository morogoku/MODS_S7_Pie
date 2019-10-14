.class Lcom/android/systemui/wallpaper/WallpaperViewController$1;
.super Landroid/os/Handler;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/WallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleWallpaperImageChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleWallpaperTypeChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleCleanUp()V

    goto :goto_0

    :cond_1
    const-string v0, "INFINITY"

    sget-object v2, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleWallpaperTypeChanged()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
