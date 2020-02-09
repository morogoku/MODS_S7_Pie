.class Landroid/support/v4/media/subtitle/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;,
        Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;,
        Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenLocation;,
        Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenColor;,
        Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;,
        Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;,
        Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;,
        Landroid/support/v4/media/subtitle/Cea708CCParser$Const;,
        Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "\u266b"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/support/v4/media/subtitle/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    return-void
.end method
