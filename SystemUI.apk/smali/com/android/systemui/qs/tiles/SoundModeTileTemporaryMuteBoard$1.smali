.class Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;
.super Ljava/lang/Object;
.source "SoundModeTileTemporaryMuteBoard.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "SoundModeTileTemporaryMuteBoard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChanged(mode_ringer_time_on)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;

    move-result-object v0

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->access$100(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->refreshAllView(I)V

    return-void
.end method
