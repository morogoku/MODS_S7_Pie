.class public Lorg/simpleframework/xml/filter/SystemFilter;
.super Ljava/lang/Object;
.source "SystemFilter.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/filter/SystemFilter;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v1, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method
