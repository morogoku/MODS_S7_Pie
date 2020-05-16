.class Lcom/android/server/wallpaper/WallpaperManagerService$13;
.super Ljava/lang/Thread;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "WallpaperManagerService"

    const-string v1, "ColorCodePollingThread run()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string/jumbo v1, "ril.product_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mProductCode:Ljava/lang/String;

    :goto_12
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mProductCode:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mProductCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_22
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastColorCodePollingThreadCount:I

    if-lez v0, :cond_64

    :try_start_28
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorCodePollingThread sleep(1000) count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastColorCodePollingThreadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastColorCodePollingThreadCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastColorCodePollingThreadCount:I
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_4f} :catch_50

    goto :goto_58

    :catch_50
    move-exception v0

    const-string v1, "WallpaperManagerService"

    const-string v2, "InterruptedException occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string/jumbo v1, "ril.product_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mProductCode:Ljava/lang/String;

    goto :goto_12

    :cond_64
    :try_start_64
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mProductCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mProductCode:Ljava/lang/String;

    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") retrieved!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmf_color_code"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->parsingColor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3400(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d4

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3502(Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CSC_CMF:Z
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3600()Z

    move-result v2

    if-nez v2, :cond_cb

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->isOperatorWallpaper()Z
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3700(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v2

    if-nez v2, :cond_d4

    :cond_cb
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_d4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_d4} :catch_d5

    :cond_d4
    goto :goto_dd

    :catch_d5
    move-exception v0

    const-string v1, "WallpaperManagerService"

    const-string v2, "IndexOutOfBoundsException occurred on mColorCodePollingThread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_dd
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$13;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mColorCodePollingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3802(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
