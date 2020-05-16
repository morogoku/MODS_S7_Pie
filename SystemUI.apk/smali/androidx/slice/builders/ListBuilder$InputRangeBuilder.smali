.class public Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;


# virtual methods
.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    return-void
.end method
