.class Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;
.super Ljava/lang/Object;
.source "SoundModeTile.java"

# interfaces
.implements Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->setupDetailView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsSystemSettingAllSoundOff()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result v0

    return v0
.end method

.method public setRingerModeProfile(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$600(Lcom/android/systemui/qs/tiles/SoundModeTile;IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    return-void
.end method
