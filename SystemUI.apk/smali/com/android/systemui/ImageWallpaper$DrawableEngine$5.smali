.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;
.super Landroid/os/AsyncTask;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V
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
        "Landroid/util/Pair<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$900(Lcom/android/systemui/ImageWallpaper;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->isDexStandAloneMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getBitmapForDex()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$1500(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v4

    xor-int/2addr v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/WallpaperManager;->getBitmap(ZIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    nop

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    const-string v2, "ImageWallpaper"

    const-string v4, "Unable to load wallpaper!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "ImageWallpaper"

    const-string v5, "Unable reset to default wallpaper!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$900(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v5, v5, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper;->access$1500(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v5

    xor-int/2addr v5, v0

    invoke-virtual {v4, v0, v2, v5}, Landroid/app/WallpaperManager;->getBitmap(ZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    :catch_2
    move-exception v0

    const-string v2, "ImageWallpaper"

    const-string v4, "Unable to load default wallpaper!"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-object v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$900(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPostExecute: current which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$2300(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/util/Pair;)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$600(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$2402(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$602(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
