.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeTileVolumeMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$400(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$400(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$502(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$600(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->updateBarViews()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    sget v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$600(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->updateBarViews()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$2$5htQykwCho3uoGXjwdHHNlsV5o4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$2$5htQykwCho3uoGXjwdHHNlsV5o4;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
