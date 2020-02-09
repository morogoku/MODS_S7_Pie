.class Landroid/support/v4/media/subtitle/Cea608CCParser;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;,
        Landroid/support/v4/media/subtitle/Cea608CCParser$CCMemory;,
        Landroid/support/v4/media/subtitle/Cea608CCParser$CCLineBuilder;,
        Landroid/support/v4/media/subtitle/Cea608CCParser$MutableBackgroundColorSpan;,
        Landroid/support/v4/media/subtitle/Cea608CCParser$PAC;,
        Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;,
        Landroid/support/v4/media/subtitle/Cea608CCParser$DisplayListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Cea608CCParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/subtitle/Cea608CCParser;->DEBUG:Z

    return-void
.end method
