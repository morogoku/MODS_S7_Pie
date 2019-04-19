.class Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;
.super Ljava/lang/Object;
.source "SoundModeTileSelectBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget v1, v1, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;->setRingerModeProfile(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget v1, v1, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->updateAllButtonViews(I)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4100"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSALoggingDetail:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
