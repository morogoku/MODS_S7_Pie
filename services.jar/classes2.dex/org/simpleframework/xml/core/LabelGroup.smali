.class Lorg/simpleframework/xml/core/LabelGroup;
.super Ljava/lang/Object;
.source "LabelGroup.java"


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->size:I

    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/simpleframework/xml/core/Label;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPrimary()Lorg/simpleframework/xml/core/Label;
    .registers 3

    iget v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->size:I

    if-lez v0, :cond_e

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method