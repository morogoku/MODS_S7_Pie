.class Lorg/simpleframework/xml/stream/Indenter;
.super Ljava/lang/Object;
.source "Indenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/Indenter$Cache;
    }
.end annotation


# instance fields
.field private cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

.field private count:I

.field private indent:I

.field private index:I


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;I)V

    return-void
.end method

.method private constructor <init>(Lorg/simpleframework/xml/stream/Format;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/Format;->getIndent()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    new-instance v0, Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/stream/Indenter$Cache;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    return-void
.end method

.method private create()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-lez v2, :cond_21

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput-char v3, v0, v2

    nop

    :goto_10
    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-gt v1, v2, :cond_1b

    const/16 v2, 0x20

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_21
    const-string v1, "\n"

    return-object v1
.end method

.method private indent(I)Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v0, :cond_1e

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/Indenter$Cache;->get(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Indenter;->create()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->set(ILjava/lang/String;)V

    :cond_15
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/Indenter$Cache;->size()I

    move-result v1

    if-lez v1, :cond_1e

    return-object v0

    :cond_1e
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public pop()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v1, :cond_15

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    :cond_15
    return-object v0
.end method

.method public push()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v1, :cond_15

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    :cond_15
    return-object v0
.end method

.method public top()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
