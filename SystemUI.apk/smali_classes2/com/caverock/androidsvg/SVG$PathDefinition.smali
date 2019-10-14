.class public Lcom/caverock/androidsvg/SVG$PathDefinition;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PathDefinition"
.end annotation


# instance fields
.field private commands:[B

.field private commandsLength:I

.field private coords:[F

.field private coordsLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    return-void
.end method

.method private addCommand(B)V
    .locals 4

    iget v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private coordsEnsure(I)V
    .locals 4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v0, v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    :cond_0
    return-void
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .locals 4

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    or-int/2addr v0, v1

    or-int/2addr v0, p5

    int-to-byte v1, v0

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p6, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p7, v1, v2

    return-void
.end method

.method public close()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p4, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p5, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p6, v0, v1

    return-void
.end method

.method public enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v10, v5

    goto :goto_1

    :cond_0
    move v10, v1

    :goto_1
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    move v11, v5

    goto :goto_2

    :cond_1
    move v11, v1

    :goto_2
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v2, 0x1

    aget v7, v4, v2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v5, 0x1

    aget v8, v2, v5

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v4, 0x1

    aget v9, v2, v4

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v5, 0x1

    aget v12, v2, v5

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v4, 0x1

    aget v13, v2, v4

    move-object v6, p1

    invoke-interface/range {v6 .. v13}, Lcom/caverock/androidsvg/SVG$PathInterface;->arcTo(FFFZZFF)V

    move v2, v5

    goto/16 :goto_4

    :pswitch_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v7, v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v8, v7, 0x1

    aget v6, v6, v7

    invoke-interface {p1, v2, v4, v5, v6}, Lcom/caverock/androidsvg/SVG$PathInterface;->quadTo(FFFF)V

    nop

    move v2, v8

    goto :goto_4

    :pswitch_1
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v2, 0x1

    aget v7, v4, v2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v5, 0x1

    aget v8, v2, v5

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v4, 0x1

    aget v9, v2, v4

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v5, 0x1

    aget v10, v2, v5

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v4, 0x1

    aget v11, v2, v4

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v5, 0x1

    aget v12, v2, v5

    move-object v6, p1

    invoke-interface/range {v6 .. v12}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    nop

    move v2, v4

    goto :goto_4

    :pswitch_2
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v5

    invoke-interface {p1, v2, v4}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    goto :goto_3

    :pswitch_3
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v5

    invoke-interface {p1, v2, v4}, Lcom/caverock/androidsvg/SVG$PathInterface;->moveTo(FF)V

    nop

    :goto_3
    move v2, v6

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$PathInterface;->close()V

    nop

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lineTo(FF)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    return-void
.end method

.method public moveTo(FF)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p4, v0, v1

    return-void
.end method
