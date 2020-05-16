.class public Landroidx/slice/builders/GridRowBuilder$CellBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "GridRowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/GridRowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;


# virtual methods
.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    return-void
.end method
