.class Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;
.super Landroid/support/v4/media/subtitle/ClosedCaptionWidget;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/support/v4/media/subtitle/Cea608CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/ClosedCaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cea608CCWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;,
        Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;
    }
.end annotation


# instance fields
.field private final mTextBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic access$000(Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method
