.class Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CaptionTrack;
.super Landroid/support/v4/media/subtitle/SubtitleTrack;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/ClosedCaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cea608CaptionTrack"
.end annotation


# instance fields
.field private final mRenderingWidget:Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;


# virtual methods
.method public getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CaptionTrack;->mRenderingWidget:Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    return-object v0
.end method

.method public updateView(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
