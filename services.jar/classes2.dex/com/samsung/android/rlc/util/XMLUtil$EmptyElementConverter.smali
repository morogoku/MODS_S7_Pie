.class public Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
.super Ljava/lang/Object;
.source "XMLUtil.java"

# interfaces
.implements Lorg/simpleframework/xml/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/util/XMLUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyElementConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/convert/Converter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/rlc/util/XMLUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/rlc/util/XMLUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;->this$0:Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    return-object v0
.end method

.method public bridge synthetic write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    return-void
.end method
