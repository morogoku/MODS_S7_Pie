.class public final Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "GridRowBuilderListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBuilder"
.end annotation


# instance fields
.field private mContentIntent:Landroid/app/PendingIntent;


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "horizontal"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :goto_0
    return-void
.end method
