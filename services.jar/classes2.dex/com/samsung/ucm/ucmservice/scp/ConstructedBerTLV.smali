.class public Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
.super Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.source "ConstructedBerTLV.java"


# instance fields
.field private mValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/ucm/ucmservice/scp/BerTLV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    return-void

    :cond_16
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v1, "Inconsistent tag"

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>([BIII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    iput p4, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>([BI)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->parseLength([BI)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getFullLen()I

    move-result v0

    if-gt v0, p3, :cond_71

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    const/4 v0, 0x0

    :goto_26
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    if-ge v0, v1, :cond_44

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, p2, v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_44
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    if-ne v0, v1, :cond_49

    return-void

    :cond_49
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format exception (buffer size expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getFullLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format exception (buffer size max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getFullLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    return-void
.end method

.method public getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 4

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v1, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    if-eqz v1, :cond_22

    return-object v1

    :cond_22
    goto :goto_f

    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_22
    goto :goto_6

    :cond_23
    return-void
.end method

.method public setLevel(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    invoke-super {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_25
    iget v3, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    if-ge v2, v3, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "+--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_5c
    return-object v0
.end method

.method public updateLength()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLength()V

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    goto :goto_9

    :cond_22
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLenLength()V

    return-void
.end method

.method public write([BI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    move v0, p2

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->write([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->writeLen([BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write([BI)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_16

    :cond_28
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getFullLen()I

    move-result v2

    return v2
.end method
