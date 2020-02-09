.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$800(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper;->access$900(Lcom/android/systemui/ImageWallpaper;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1000(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v4

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1100(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v4

    if-eq v4, v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1000(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v4

    if-eq v4, v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1100(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v4

    if-ne v4, v2, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v4

    if-eq v4, v3, :cond_4

    :cond_1
    const-string v4, "ImageWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDisplayChanged deviceHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " deviceWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mLastDeviceHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1100(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mLastDeviceWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1000(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mCurrentWhich="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v6, v6, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v6}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1002(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1102(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1300(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-object v5, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1400(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v4

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4, v3}, Lcom/android/systemui/ImageWallpaper;->access$002(Lcom/android/systemui/ImageWallpaper;I)I

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4, v6}, Lcom/android/systemui/ImageWallpaper;->access$1502(Lcom/android/systemui/ImageWallpaper;Z)Z

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v4, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$1600(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)V

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "need_dark_statusbar"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "need_dark_font"

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "need_dark_navigationbar"

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-object v5, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v5, -0x1

    iput v5, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput v5, v4, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    :cond_4
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
