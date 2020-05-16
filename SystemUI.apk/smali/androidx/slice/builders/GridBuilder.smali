.class public Landroidx/slice/builders/GridBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "GridBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/GridBuilder$CellBuilder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/GridRowBuilder;


# virtual methods
.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/GridRowBuilder;

    iput-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    return-void
.end method
