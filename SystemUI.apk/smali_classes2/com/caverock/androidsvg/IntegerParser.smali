.class public Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"


# instance fields
.field isNegative:Z

.field pos:I

.field value:J


# direct methods
.method public constructor <init>(ZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/caverock/androidsvg/IntegerParser;->isNegative:Z

    iput-wide p2, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    iput p4, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return-void
.end method

.method public static parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 12

    move v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-lt v0, p2, :cond_0

    return-object v3

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    const-wide/16 v6, 0x10

    if-lt v4, v5, :cond_1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    mul-long/2addr v6, v1

    add-int/lit8 v5, v4, -0x30

    int-to-long v8, v5

    add-long/2addr v6, v8

    :goto_1
    move-wide v1, v6

    goto :goto_2

    :cond_1
    const-wide/16 v8, 0xa

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x46

    if-gt v4, v5, :cond_2

    mul-long/2addr v6, v1

    add-int/lit8 v5, v4, -0x41

    int-to-long v10, v5

    add-long/2addr v6, v10

    add-long/2addr v6, v8

    goto :goto_1

    :cond_2
    const/16 v5, 0x61

    if-lt v4, v5, :cond_4

    const/16 v5, 0x66

    if-gt v4, v5, :cond_4

    mul-long/2addr v6, v1

    add-int/lit8 v5, v4, -0x61

    int-to-long v10, v5

    add-long/2addr v6, v10

    add-long/2addr v6, v8

    goto :goto_1

    :goto_2
    const-wide v5, 0xffffffffL

    cmp-long v5, v1, v5

    if-lez v5, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-ne v0, p1, :cond_5

    return-object v3

    :cond_5
    new-instance v3, Lcom/caverock/androidsvg/IntegerParser;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    return-object v3
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return v0
.end method

.method public value()I
    .locals 2

    iget-wide v0, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v0, v0

    return v0
.end method
