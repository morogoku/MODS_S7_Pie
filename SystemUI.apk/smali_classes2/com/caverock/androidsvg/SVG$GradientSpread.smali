.class public final enum Lcom/caverock/androidsvg/SVG$GradientSpread;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "GradientSpread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/SVG$GradientSpread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/caverock/androidsvg/SVG$GradientSpread;

.field public static final enum pad:Lcom/caverock/androidsvg/SVG$GradientSpread;

.field public static final enum reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

.field public static final enum repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/caverock/androidsvg/SVG$GradientSpread;

    const-string v1, "pad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$GradientSpread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$GradientSpread;->pad:Lcom/caverock/androidsvg/SVG$GradientSpread;

    new-instance v0, Lcom/caverock/androidsvg/SVG$GradientSpread;

    const-string v1, "reflect"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$GradientSpread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    new-instance v0, Lcom/caverock/androidsvg/SVG$GradientSpread;

    const-string v1, "repeat"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/SVG$GradientSpread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v1, Lcom/caverock/androidsvg/SVG$GradientSpread;->pad:Lcom/caverock/androidsvg/SVG$GradientSpread;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    aput-object v1, v0, v3

    sget-object v1, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    aput-object v1, v0, v4

    sput-object v0, Lcom/caverock/androidsvg/SVG$GradientSpread;->$VALUES:[Lcom/caverock/androidsvg/SVG$GradientSpread;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;
    .locals 1

    const-class v0, Lcom/caverock/androidsvg/SVG$GradientSpread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$GradientSpread;

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$GradientSpread;
    .locals 1

    sget-object v0, Lcom/caverock/androidsvg/SVG$GradientSpread;->$VALUES:[Lcom/caverock/androidsvg/SVG$GradientSpread;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVG$GradientSpread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$GradientSpread;

    return-object v0
.end method
