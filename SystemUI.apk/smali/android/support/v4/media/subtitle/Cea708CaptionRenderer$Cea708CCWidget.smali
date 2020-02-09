.class Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
.super Landroid/support/v4/media/subtitle/ClosedCaptionWidget;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/Cea708CaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cea708CCWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;,
        Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;,
        Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;,
        Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;,
        Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
    }
.end annotation


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/media/subtitle/ClosedCaptionWidget;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mClosedCaptionLayout:Landroid/support/v4/media/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
