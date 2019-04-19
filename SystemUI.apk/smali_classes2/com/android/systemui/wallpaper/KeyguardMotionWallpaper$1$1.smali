.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;
.super Landroid/os/AsyncTask;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v5, v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "KeyguardMotionWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadDrawable exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->access$1000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v5, v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3

    :cond_1
    return-object v3

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->access$1000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v1, v3, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V

    :cond_4
    const-string v3, "KeyguardMotionWallpaper"

    const-string v4, "layer process finishied"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setStayPoint(I)V

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->init()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->doInBackground([Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "asyncTask cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->onCancelled(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V
    .locals 7

    if-nez p1, :cond_0

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "null bitmap returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v3, "KeyguardMotionWallpaper"

    const-string v4, "asyncTask onPostExecute!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "KeyguardMotionWallpaper"

    const-string v4, "BITMAP LOAD FINISH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v5, v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v5, v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "KeyguardMotionWallpaper"

    const-string v6, "IndexOutOfBoundsException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "KeyguardMotionWallpaper"

    const-string v6, "CloneNotSupportedException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    move v4, v2

    :goto_4
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v5, v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v5, v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    const/16 v6, 0x1e

    mul-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setStayPoint(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v5, v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Z)Z

    :cond_5
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->onPostExecute(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V

    return-void
.end method
