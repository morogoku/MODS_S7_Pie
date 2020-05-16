.class Lcom/android/systemui/wallpaper/video/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$202(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z

    invoke-virtual {p1, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitComplete() p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$402(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    :cond_1
    return-void
.end method
