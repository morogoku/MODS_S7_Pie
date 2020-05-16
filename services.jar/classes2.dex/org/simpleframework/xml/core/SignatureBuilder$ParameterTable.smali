.class Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;
.super Ljava/util/ArrayList;
.source "SignatureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/SignatureBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .registers 2

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .registers 2

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->height()I

    move-result v0

    return v0
.end method

.method private height()I
    .registers 3

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_10

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v1

    return v1

    :cond_10
    return v1
.end method

.method private width()I
    .registers 2

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    return-object v0
.end method

.method public get(II)Lorg/simpleframework/xml/core/Parameter;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;
    .registers 5

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->size()I

    move-result v0

    move v1, v0

    :goto_5
    if-gt v1, p1, :cond_12

    new-instance v2, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    invoke-virtual {p0, v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    return-object v1
.end method

.method public insert(Lorg/simpleframework/xml/core/Parameter;I)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method
