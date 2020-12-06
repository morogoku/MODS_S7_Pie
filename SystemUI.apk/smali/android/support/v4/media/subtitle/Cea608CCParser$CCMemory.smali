.class Landroid/support/v4/media/subtitle/Cea608CCParser$CCMemory;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private final mLines:[Landroid/support/v4/media/subtitle/Cea608CCParser$CCLineBuilder;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Landroid/support/v4/media/subtitle/Cea608CCParser$CCLineBuilder;

    iput-object v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroid/support/v4/media/subtitle/Cea608CCParser$CCLineBuilder;

    const/16 v0, 0x22

    new-array v0, v0, [C

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    return-void
.end method
