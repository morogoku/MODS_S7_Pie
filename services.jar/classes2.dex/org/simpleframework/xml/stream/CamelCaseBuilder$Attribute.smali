.class Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;
.super Lorg/simpleframework/xml/stream/Splitter;
.source "CamelCaseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/CamelCaseBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Attribute"
.end annotation


# instance fields
.field private capital:Z

.field final synthetic this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Splitter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected commit([CII)V
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected parse([CII)V
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;

    iget-boolean v0, v0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->attribute:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->capital:Z

    if-eqz v0, :cond_12

    :cond_a
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->toUpper(C)C

    move-result v0

    aput-char v0, p1, p2

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->capital:Z

    return-void
.end method
