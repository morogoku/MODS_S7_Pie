.class public final enum Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VectorEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/SVG$Style$VectorEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field public static final enum NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field public static final enum None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    const-string v1, "NonScalingStroke"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    aput-object v1, v0, v3

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

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

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 1

    const-class v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0
.end method
