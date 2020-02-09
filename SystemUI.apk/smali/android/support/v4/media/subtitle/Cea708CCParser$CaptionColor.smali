.class public Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionColor"
.end annotation


# static fields
.field private static final COLOR_MAP:[I

.field private static final OPACITY_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xf
        0xf0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xfe
        0x80
        0x0
    .end array-data
.end method
