.class Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;
.super Lorg/simpleframework/xml/stream/Splitter;
.source "HyphenBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/HyphenBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/stream/HyphenBuilder;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/stream/HyphenBuilder;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->this$0:Lorg/simpleframework/xml/stream/HyphenBuilder;

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Splitter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/HyphenBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/HyphenBuilder$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;-><init>(Lorg/simpleframework/xml/stream/HyphenBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected commit([CII)V
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int v0, p2, p3

    iget v1, p0, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->count:I

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    return-void
.end method

.method protected parse([CII)V
    .registers 5

    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->toLower(C)C

    move-result v0

    aput-char v0, p1, p2

    return-void
.end method
