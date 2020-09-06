.class Lorg/simpleframework/xml/core/TemplateEngine;
.super Ljava/lang/Object;
.source "TemplateEngine.java"


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;

.field private name:Lorg/simpleframework/xml/core/Template;

.field private off:I

.field private source:Lorg/simpleframework/xml/core/Template;

.field private text:Lorg/simpleframework/xml/core/Template;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    iput-object p1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->filter:Lorg/simpleframework/xml/filter/Filter;

    return-void
.end method

.method private name()V
    .registers 4

    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v1, v1, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v0, v1, :cond_22

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1c

    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->replace()V

    goto :goto_22

    :cond_1c
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Template;->append(C)V

    goto :goto_0

    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->length()I

    move-result v0

    if-lez v0, :cond_38

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Template;->append(Lorg/simpleframework/xml/core/Template;)V

    :cond_38
    return-void
.end method

.method private parse()V
    .registers 5

    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v1, v1, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v0, v1, :cond_40

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3a

    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v2, v2, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v1, v2, :cond_3a

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v1, v1, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v1, v1, v2

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_34

    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->name()V

    goto :goto_0

    :cond_34
    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    :cond_3a
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Template;->append(C)V

    goto :goto_0

    :cond_40
    return-void
.end method

.method private replace()V
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->length()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TemplateEngine;->replace(Lorg/simpleframework/xml/core/Template;)V

    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    return-void
.end method

.method private replace(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string v2, "${"

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    goto :goto_22

    :cond_1d
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method private replace(Lorg/simpleframework/xml/core/Template;)V
    .registers 3

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Template;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TemplateEngine;->replace(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    return-void
.end method

.method public process(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    return-object p1

    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->parse()V

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->clear()V

    return-object v0

    :catchall_1b
    move-exception v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->clear()V

    throw v0
.end method
