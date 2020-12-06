.class Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;
.super Landroid/os/AsyncTask;
.source "WallpaperEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$needWhiteBgSettings:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;ZLandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->val$needWhiteBgSettings:Z

    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->doInBackground([Ljava/lang/Void;)[I

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[I
    .locals 4

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    const-string v1, "WallpaperEventNotifier"

    const-string v2, "getWallpaperHintsInArea start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getWallpaperHintsInArea(I)[I

    move-result-object v1

    const-string v2, "WallpaperEventNotifier"

    const-string v3, "getWallpaperHintsInArea end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WallpaperEventNotifier"

    const-string v1, "onPostExecute: canceled task, do not update."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->val$needWhiteBgSettings:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$700(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;[I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$1000(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->checkIfNotThemeTypeDirectly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WallpaperEventNotifier"

    const-string v1, "updateAdaptiveColors"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$1100(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$100(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->access$1200(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V

    return-void
.end method
