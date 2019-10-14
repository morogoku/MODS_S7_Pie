.class public Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "SoundModeTileSelectBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeMuteButton;,
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeVibrationButton;,
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;,
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;,
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundModeTileSelectBoard"


# instance fields
.field private mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

.field private mMuteWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

.field private mSoundWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

.field private mVibratemWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;

    const v1, 0x7f0a0555

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mSoundWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeVibrationButton;

    const v1, 0x7f0a0624

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeVibrationButton;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mVibratemWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeMuteButton;

    const v1, 0x7f0a035b

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeMuteButton;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mMuteWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    return-void
.end method

.method public setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    return-void
.end method

.method public updateAllButtonViews(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mSoundWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->updateViews(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mVibratemWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->updateViews(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mMuteWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->updateViews(I)V

    return-void
.end method
